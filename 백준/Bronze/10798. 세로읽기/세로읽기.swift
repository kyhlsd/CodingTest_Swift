var input: [[String]] = []
var maxLength = 0
var answer = ""

for _ in 1...5 {
    let line = readLine()!.map { String($0) }
    maxLength = max(maxLength, line.count)
    input.append(line)
}

for i in 0..<5 {
    let num = maxLength - input[i].count
    for _ in 0..<num {
        input[i].append("")
    }
}

for i in 0..<maxLength {
    for j in 0..<5 {
        answer += input[j][i]
    }
}

print(answer)