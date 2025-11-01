import Foundation

func solution(_ n:Int) -> Int {
    var num = 0
    var count = 0
    while num < n {
        count += 1
        if count % 3 == 0 {
            continue
        }
        if String(count).contains("3") {
            continue
        }
        num += 1
    }
    return count
}