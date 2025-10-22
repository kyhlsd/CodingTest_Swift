import Foundation

func solution(_ l: Int, _ r: Int) -> [Int] {
    var result: [Int] = []
    var i = 1
    
    while true {
        let binary = String(i, radix: 2)
        let number = Int(binary.replacingOccurrences(of: "1", with: "5"))!
        if number > r {
            break
        }
        if number >= l {
            result.append(number)
        }
        i += 1
    }
    return result.isEmpty ? [-1] : result
}