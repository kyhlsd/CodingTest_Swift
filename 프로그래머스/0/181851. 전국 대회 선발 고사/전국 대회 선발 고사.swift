import Foundation

func solution(_ rank:[Int], _ attendance:[Bool]) -> Int {
    let sorted = rank.sorted()
    var value = 10000
    var result = 0
    
    for item in sorted {
        let index = rank.firstIndex(of: item)!
        if attendance[index] {
            result += value * index
            if value == 1 { break }
            value /= 100
        }
    }
    
    return result
}