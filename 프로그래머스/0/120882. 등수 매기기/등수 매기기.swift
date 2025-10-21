import Foundation

func solution(_ score:[[Int]]) -> [Int] {
    let sorted = score
        .map { $0[0] + $0[1] }
        .sorted {
            $0 > $1
        }
    let rank = score
        .map {
            sorted.firstIndex(of: $0[0] + $0[1])! + 1
        }
    return rank
}