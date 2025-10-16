import Foundation

func solution(_ score:[[Int]]) -> [Int] {
    let sorted = score
        .map { $0[0] + $0[1] }
        .sorted { $0 > $1 }
    
    var result = [Int]()
    for item in score {
        if let index = sorted.firstIndex(of: item[0] + item[1]) {
            result.append(index + 1)
        }
    }
    return result
}