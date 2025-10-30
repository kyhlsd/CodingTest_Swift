import Foundation

func solution(_ array:[Int]) -> Int {
    var dict = [Int: Int]()
    for num in array {
        dict[num, default: 0] += 1
    }
    var max = -1
    var result = -1
    var duplication = false
    for (key, value) in dict {
        if value > max {
            max = value
            result = key
            duplication = false
        } else if value == max {
            duplication = true
        }
    }
    if duplication { return -1 }
    return result
}