let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0], k = input[1]
var array = Array(1...n)
var current = 0

var result = "<"

for _ in 1...n {
    current = (current + k - 1) % array.count
    result += "\(array.remove(at: current)), "
}
result.removeLast(2)
result += ">"
print(result)