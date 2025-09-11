import Foundation

func solution(_ storage:[String], _ requests:[String]) -> Int {
    let n = storage.count
    let m = storage[0].count
    var array = [[Character](repeating: "0", count: m + 2)]
    storage.forEach { array.append(["0"] + $0 + ["0"]) }
    array.append([Character](repeating: "0", count: m + 2))
        
    let dxdy = [(1, 0), (-1, 0), (0, 1), (0, -1)]
    var result = n * m
    
    func getAccessibleSpaces() -> [[Bool]] {
        var visited = [[Bool]](repeating: [Bool](repeating: false, count: m + 2), count: n + 2)
        var queue = [(Int, Int)]()
        
        queue.append((0, 0))
        visited[0][0] = true
        
        while !queue.isEmpty {
            let (x, y) = queue.removeFirst()
            for (dx, dy) in dxdy {
                let nx = x + dx
                let ny = y + dy
                if nx < 0 || nx >= n + 2 || ny < 0 || ny >= m + 2 { continue }
                if visited[nx][ny] { continue }
                if array[nx][ny] == "0" {
                    visited[nx][ny] = true
                    queue.append((nx, ny))
                }
            }
        }
        return visited
    }
        
    for request in requests {
        if request.count == 1 {
            let accessible = getAccessibleSpaces()
            guard let char = request.first else { continue }
            var temp = [(Int, Int)]()
            for i in 1...n {
                for j in 1...m {
                    if array[i][j] == char {
                        for (dx, dy) in dxdy {
                            let ni = i + dx
                            let nj = j + dy
                            if accessible[ni][nj] {
                                temp.append((i, j))
                                result -= 1
                                break
                            }
                        }
                    }
                }
            }
            temp.forEach { array[$0.0][$0.1] = "0" }
        } else {
            guard let char = request.first else { continue }
            for i in 1...n {
                for j in 1...m {
                    if array[i][j] == char {
                        array[i][j] = "0"
                        result -= 1
                    }
                }
            }
        }
    }
        
    return result
}