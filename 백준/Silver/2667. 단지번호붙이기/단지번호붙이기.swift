let n = Int(readLine()!)!
var map: [[Int]] = []

for _ in 0..<n {
    map.append(readLine()!.map { Int(String($0))! })
}

var visited: [[Bool]] = .init(repeating: .init(repeating: false, count: n), count: n)
var moves = [(-1, 0), (1, 0), (0, -1), (0, 1)]
var result: [Int] = []
var answer = ""

for y in 0..<n {
    for x in 0..<n {
        if map[y][x] == 0 { continue }
        if visited[y][x] { continue }
        
        var stack: [(Int, Int)] = [(y, x)]
        visited[y][x] = true
        var count = 0
        
        while !stack.isEmpty {
            let current = stack.removeLast()
            count += 1
            
            for move in moves {
                let ny = current.0 + move.0
                let nx = current.1 + move.1
                if ny < 0 || ny >= n || nx < 0 || nx >= n { continue }
                if visited[ny][nx] { continue }
                if map[ny][nx] == 0 { continue }
                
                stack.append((ny, nx))
                visited[ny][nx] = true
            }
        }
        if count > 0 {
            result.append(count)
        }
    }
}

result.sort()
answer += "\(result.count)\n"
for count in result {
    answer += "\(count)\n"
}
answer.removeLast()
print(answer)