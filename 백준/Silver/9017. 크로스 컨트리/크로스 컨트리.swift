let t = Int(readLine()!)!
var result = ""

for _ in 0..<t {
    let _ = Int(readLine()!)!
    let ranks = readLine()!.split(separator: " ").map { Int($0)! }
    var counts: [Int: Int] = [:]
    for rank in ranks {
        counts[rank, default: 0] += 1
    }
    var scores: [Int: [Int]] = [:]
    var score = 1
    for rank in ranks {
        if counts[rank, default: 0] >= 6 {
            scores[rank, default: []].append(score)
            score += 1
        }
    }
    let winner = scores.sorted {
        let first = $0.value.prefix(4).reduce(0, +)
        let second = $1.value.prefix(4).reduce(0, +)
        if first == second {
            return $0.value[4] < $1.value[4]
        } else {
            return first < second
        }
    }.first!.key
    result += "\(winner)\n"
}

result.removeLast()
print(result)