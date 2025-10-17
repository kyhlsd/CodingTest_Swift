import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    let sorted = array.sorted()
    var min = Int.max
    var index = 0
    
    for (i, number) in sorted.enumerated() {
        if min > abs(number - n) {
            min = abs(number - n)
            index = i
        }
    }
    return sorted[index]
}