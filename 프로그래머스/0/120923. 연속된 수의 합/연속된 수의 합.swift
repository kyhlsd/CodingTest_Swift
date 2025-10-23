import Foundation

func solution(_ num:Int, _ total:Int) -> [Int] {
    let center = total / num
    let distance = num / 2
    let left = num % 2 == 0 ? center - distance + 1 : center - distance
    return Array(left...(center + distance))
}