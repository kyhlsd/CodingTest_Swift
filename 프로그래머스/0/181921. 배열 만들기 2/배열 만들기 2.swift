import Foundation

func solution(_ l: Int, _ r: Int) -> [Int] {
    var array = [[5]]
    let digit = Int(log(Double(r)))
    for i in 1...digit {
        array.append(
            array[i-1].map {
                [$0 * 10, $0 * 10 + 5]
            }
                .reduce([], +)
        )
    }
    let result = array.reduce([], +).filter { $0 >= l && $0 <= r}
    if result.isEmpty {
        return [-1]
    }
    return result
}