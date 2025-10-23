import Foundation

func solution(_ quiz:[String]) -> [String] {
    var result = [String]()
    for item in quiz {
        let split = item.split(separator: " ")
        if split[1] == "+" {
            if Int(split[0])! + Int(split[2])! == Int(split[4]) {
                result.append("O")
            } else {
                result.append("X")
            }
        } else {
            if Int(split[0])! - Int(split[2])! == Int(split[4]) {
                result.append("O")
            } else {
                result.append("X")
            }
        }
    }
    return result
}