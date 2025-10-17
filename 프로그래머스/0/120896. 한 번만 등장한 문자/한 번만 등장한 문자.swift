import Foundation

func solution(_ s:String) -> String {
    var dict: [Character: Int] = [:]
    s.forEach {
        dict[$0, default: 0] += 1
    }
    
    var result = [Character]()
    for char in dict {
        if char.value == 1 {
            result.append(char.key)
        }
    }
    result.sort()
    return String(result)
}