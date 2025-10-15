import Foundation

func solution(_ n:Int) -> Int {
    var num = 1
    var result = 0
    
    while num * num < n {
        if n % num == 0 {
            result += 2
        }
        num += 1
    }
    if num * num == n {
        result += 1
    }
    
    return result
}