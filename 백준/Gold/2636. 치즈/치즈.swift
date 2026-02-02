let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let y = input[0], x = input[1]
var map: [[Int]] = []
for _ in 0..<y {
    map.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}

let dx = [-1, 1, 0, 0]
let dy = [0, 0, -1, 1]
var time = 0
var prevCount = 0

while true {
    var borders: [(Int, Int)] = []
    var visited = [[Bool]](repeating: .init(repeating: false, count: x), count: y)
    
    var queue = [(0, 0)]
    var front = 0
    visited[0][0] = true
    
    while queue.count > front {
        let current = queue[front]
        front += 1
        
        for i in 0..<4 {
            let ny = current.0 + dy[i]
            let nx = current.1 + dx[i]
            if ny < 0 || ny >= y || nx < 0 || nx >= x { continue }
            if visited[ny][nx] { continue }
            if map[ny][nx] == 1 {
                borders.append((ny, nx))
            } else {
                queue.append((ny, nx))
            }
            visited[ny][nx] = true
        }
    }
    
    if borders.isEmpty {
        print(time)
        print(prevCount)
        break
    }
    
    for border in borders {
        map[border.0][border.1] = 0
    }
    
    time += 1
    prevCount = borders.count
}