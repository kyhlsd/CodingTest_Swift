let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let y = input[0], x = input[1], n = input[2]
var board: [[Bool]] = .init(repeating: .init(repeating: false, count: x), count: y)
for _ in 0..<n {
    let rectangle = readLine()!.split(separator: " ").map { Int(String($0))! }
    for i in rectangle[1]..<rectangle[3] {
        for j in rectangle[0]..<rectangle[2] {
            board[i][j] = true
        }
    }
}

var visited: [[Bool]] = .init(repeating: .init(repeating: false, count: x), count: y)
let dy = [1, -1, 0, 0]
let dx = [0, 0, 1, -1]
var areas: [Int] = []

for i in 0..<y {
    for j in 0..<x {
        if board[i][j] { continue }
        if visited[i][j] { continue }
        
        var queue = [(i, j)]
        var front = 0
        visited[i][j] = true
        
        while queue.count >= front + 1 {
            let current = queue[front]
            front += 1
            for k in 0..<4 {
                let ny = current.0 + dy[k]
                let nx = current.1 + dx[k]
                if ny < 0 || ny >= y || nx < 0 || nx >= x { continue }
                if visited[ny][nx] { continue }
                if board[ny][nx] { continue }
                
                queue.append((ny, nx))
                visited[ny][nx] = true
            }
        }
        
        areas.append(front)
    }
}

areas.sort()
var answer = ""
answer += "\(areas.count)\n"
for area in areas {
    answer += "\(area) "
}
answer.removeLast()
print(answer)