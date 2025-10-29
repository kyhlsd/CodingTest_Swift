import Foundation

func solution(_ arr:[Int], _ query:[Int]) -> [Int] {
    var result = arr
    for (i, item) in query.enumerated() {
        if i % 2 == 0 {
            result.removeLast(result.count - item - 1)
        } else {
            result.removeFirst(item)
        }
    }
    return result
}