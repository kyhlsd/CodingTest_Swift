let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0], x = input[1]
let array = readLine()!.split(separator: " ").map { Int(String($0))! }

var cumulativeArray = [Int]()
cumulativeArray.reserveCapacity(n)
var cumulative = 0
array.forEach {
    cumulative += $0
    cumulativeArray.append(cumulative)
}

var maxValue = cumulativeArray[x - 1]
var count = 1

for i in x..<n {
    let sum = cumulativeArray[i] - cumulativeArray[i - x]
    if sum == maxValue {
        count += 1
    } else if sum > maxValue {
        count = 1
        maxValue = sum
    }
}

let result = maxValue == 0 ? "SAD" : "\(maxValue)\n\(count)"
print(result)