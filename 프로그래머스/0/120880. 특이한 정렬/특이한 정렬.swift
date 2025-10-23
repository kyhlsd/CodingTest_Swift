import Foundation

func solution(_ numlist:[Int], _ n:Int) -> [Int] {
    return numlist.sorted {
        let first = abs(n - $0)
        let second = abs(n - $1)
        if first == second {
            return $0 > $1
        } else {
            return first < second
        }
    }
}