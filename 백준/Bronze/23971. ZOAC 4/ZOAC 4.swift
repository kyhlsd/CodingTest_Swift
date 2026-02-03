let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let h = input[0], w = input[1], n = input[2], m = input[3]

let rowCount = (h + n) / (n + 1)
let colCount = (w + m) / (m + 1)
print(rowCount * colCount)