let _ = readLine()
let input = readLine()!.map { Int(String($0))! }
let sum = input.reduce(0, +)
print(sum)