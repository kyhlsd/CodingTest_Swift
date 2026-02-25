let n = Int(readLine()!)!
var answer = ""

for _ in 0..<n {
    var count = 0
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    var line = [input[1]]
    line.reserveCapacity(20)
    
    for i in 2...20 {
        for j in 0..<line.count {
            if line[j] > input[i] {
                count += line.count - j
                line.insert(input[i], at: j)
                break
            }
            if j == line.count - 1 {
                line.append(input[i])
            }
        }
    }
    answer += "\(input[0]) \(count)\n"
}
print(answer)