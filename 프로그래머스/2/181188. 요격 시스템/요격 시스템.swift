import Foundation

func solution(_ targets:[[Int]]) -> Int {
    var sorted = targets.sorted { $0[1] < $1[1] }
    var result = 0
    var lastX = -1
    
    for item in sorted {
        if item[0] >= lastX {
            lastX = item[1]
            result += 1
        }    
    }
    
    return result
}