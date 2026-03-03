let n = Int(readLine()!)!
var array = [(Int, Int)]()
var counts = [Int](repeating: 0, count: n)

for i in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    for j in 0..<array.count {
        if array[j].0 > input[0] && array[j].1 > input[1] {
            counts[i] += 1
        } else if array[j].0 < input[0] && array[j].1 < input[1] {
            counts[j] += 1
        }
    }
    array.append((input[0], input[1]))
}

var result = ""
counts.forEach { result += "\($0 + 1) "}
result.removeLast()
print(result)