import Foundation

func solution(_ n:Int) -> Int {
    let root = sqrt(Double(n))
    if Int(root) * Int(root) == n {
        return 1
    } else {
        return 2
    }
}