import Foundation

func solution(_ array:[Int]) -> Int {
    var result = 0
    for number in array {
        let numberString = String(number)
        for char in numberString {
            if char == "7" {
                result += 1
            }
        }
    }
    return result
}