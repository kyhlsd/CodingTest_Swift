let n = Int(readLine()!)!
for i in 1...n {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    print("Case #\(i): \(input[0]) + \(input[1]) = \(input[0] + input[1])")
}