import Foundation

func solution(_ babbling:[String]) -> Int {
    let words = ["aya", "ye", "woo", "ma"]
    var result = 0
    for word in babbling {
        var temp = word
        words.forEach {
            temp = temp.replacingOccurrences(of: $0, with: " ")
        }
        if temp.trimmingCharacters(in: .whitespaces).isEmpty { result += 1 }
    }
    return result
}