import Foundation

func solution(_ order:[String]) -> Int {
    var result = 0
    for item in order {
        if item.contains("cafelatte") {
            result += 5000
        } else {
            result += 4500
        }
    }
    return result
}