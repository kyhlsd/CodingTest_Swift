import Foundation

func solution(_ emergency:[Int]) -> [Int] {
    var sorted = emergency.sorted { $0 > $1 }
    var result = [Int]()
    for item in emergency {
        if let index = sorted.firstIndex(of: item) {
            result.append(index + 1)
        }
    }
    return result
}