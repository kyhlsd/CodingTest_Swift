let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let y = input[0], x = input[1]
var board: [[Int]] = []
for _ in 0..<y {
    board.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}

var visited: [[Bool]] = .init(repeating: .init(repeating: false, count: x), count: y)
var count = 0
var maxArea = 0
let dy = [1, -1, 0, 0]
let dx = [0, 0, 1, -1]

for i in 0..<y {
    for j in 0..<x {
        if board[i][j] == 0 { continue }
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
                if board[ny][nx] == 0 { continue }
                if visited[ny][nx] { continue }
                
                queue.append((ny, nx))
                visited[ny][nx] = true
            }
        }
        
        if front > 0 { count += 1}
        maxArea = max(maxArea, front)
    }
}

print(count)
print(maxArea)