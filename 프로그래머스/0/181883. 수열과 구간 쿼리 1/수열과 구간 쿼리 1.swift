import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var result = arr
    for query in queries {
        for i in query[0]...query[1] {
            result[i] += 1
        }
    }
    return result
}