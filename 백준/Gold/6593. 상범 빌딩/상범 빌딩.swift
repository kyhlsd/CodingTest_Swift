var answer = ""
while true {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let l = input[0]
    let r = input[1]
    let c = input[2]
    if l == 0 && r == 0 && c == 0 { break }
    
    var map: [[[String]]] = []
    for i in 0..<l {
        map.append([])
        for _ in 0..<r {
            map[i].append(readLine()!.map { String($0) })
        }
        let _ = readLine()!
    }
    
    let dx = [1, -1, 0, 0, 0, 0]
    let dy = [0, 0, 1, -1, 0, 0]
    let dz = [0, 0, 0, 0, 1, -1]
    var visited: [[[Int]]] = .init(repeating: .init(repeating: .init(repeating: -1, count: c), count: r), count: l)
    var queue: [(Int, Int, Int)] = []
    var end = (-1, -1, -1)
    var front = 0
    for i in 0..<l {
        for j in 0..<r {
            for k in 0..<c {
                if map[i][j][k] == "S" {
                    queue.append((i, j, k))
                    visited[i][j][k] = 0
                } else if map[i][j][k] == "E" {
                    end = (i, j, k)
                }
            }
        }
    }
    
    while queue.count >= front + 1 {
        let current = queue[front]
        front += 1
        
        for i in 0..<6 {
            let nz = current.0 + dz[i]
            let ny = current.1 + dy[i]
            let nx = current.2 + dx[i]
            
            if nz < 0 || nz >= l || ny < 0 || ny >= r || nx < 0 || nx >= c { continue }
            if visited[nz][ny][nx] != -1 { continue }
            if map[nz][ny][nx] == "#" { continue }
            
            queue.append((nz, ny, nx))
            visited[nz][ny][nx] = visited[current.0][current.1][current.2] + 1
        }
    }
    
    if visited[end.0][end.1][end.2] == -1 {
        answer += "Trapped!\n"
    } else {
        answer += "Escaped in \(visited[end.0][end.1][end.2]) minute(s).\n"
    }
}
print(answer)