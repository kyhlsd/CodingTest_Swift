import Foundation

func solution(_ points:[[Int]], _ routes:[[Int]]) -> Int {
    var records: [Int: [[Int]]] = [:]
    
    for route in routes {
        var time = 0
        var current = points[route[0] - 1]
        records[time, default: []].append(current)
        
        for i in 1..<route.count {
            var target = points[route[i] - 1]
            
            while current[0] != target[0] {
                if current[0] > target[0] {
                    current[0] -= 1
                } else {
                    current[0] += 1
                }
                time += 1
                records[time, default: []].append(current)
            }
            
            while current[1] != target[1] {
                if current[1] > target[1] {
                    current[1] -= 1
                } else {
                    current[1] += 1
                }
                time += 1
                records[time, default: []].append(current)
            }
        }
    }
    
    var result = 0
    for (_, locations) in records {
        var visited: [[Int]: Int] = [:]
        for location in locations {
            visited[location, default: 0] += 1
        }
        result += visited.filter { $0.value > 1}.count
    }
    return result
}