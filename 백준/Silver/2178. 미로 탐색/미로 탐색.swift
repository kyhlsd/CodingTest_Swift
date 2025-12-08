let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let y = input[0], x = input[1]
var map: [[String]] = .init(repeating: [], count: y)
for i in 0..<y {
    map[i] = readLine()!.map { String($0) }
}

var visited: [[Int]] = .init(repeating: .init(repeating: -1, count: x), count: y)
var queue: [(Int, Int)] = [(0, 0)]
var front = 0
visited[0][0] = 1

let dy = [1, -1, 0, 0]
let dx = [0, 0, 1, -1]
while queue.count >= front + 1 {
    let current = queue[front]
    front += 1
    
    for i in 0..<4 {
        let ny = current.0 + dy[i]
        let nx = current.1 + dx[i]
        if ny < 0 || ny >= y || nx < 0 || nx >= x { continue }
        if visited[ny][nx] != -1 { continue }
        if map[ny][nx] == "0" { continue }
        
        queue.append((ny, nx))
        visited[ny][nx] = visited[current.0][current.1] + 1
    }
}

print(visited[y - 1][x - 1])