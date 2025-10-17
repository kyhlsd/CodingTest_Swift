import Foundation

func solution(_ l: Int, _ r: Int) -> [Int] {
    var result: [Int] = []
    var i = 1
    
    while true {
        let binary = String(i, radix: 2)
        
        if let num = Int(binary.replacingOccurrences(of: "1", with: "5")) {
            if num > r {
                break
            }
            if num >= l {
                result.append(num)
            }
        }
        
        i += 1
    }
    
    return result.isEmpty ? [-1] : result
}