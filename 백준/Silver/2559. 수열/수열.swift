let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0], k = input[1]
let array = readLine()!.split(separator: " ").map { Int(String($0))! }

var cumulative = 0
var cumulativeArray = [Int]()
cumulativeArray.reserveCapacity(array.count)
for item in array {
    cumulative += item
    cumulativeArray.append(cumulative)
}

var maxValue = cumulativeArray[k - 1]
for i in k..<n {
    let sum = cumulativeArray[i] - cumulativeArray[i - k]
    maxValue = max(maxValue, sum)
}
print(maxValue)