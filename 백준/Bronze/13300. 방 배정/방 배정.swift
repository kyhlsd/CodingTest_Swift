let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0], k = input[1]
var array: [[Int]] = .init(repeating: .init(repeating: 0, count: 2), count: 7)

for _ in 0..<n {
    let person = readLine()!.split(separator: " ").map { Int(String($0))! }
    array[person[1]][person[0]] += 1
}

var result = 0
for grade in array {
    for people in grade {
        if people == 0 { continue }
        result += people / k
        let remain = people % k
        if remain == 0 { continue }
        result += 1
    }
}

print(result)