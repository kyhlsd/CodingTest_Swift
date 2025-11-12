let input = readLine()!.map { String($0) }
var index = 0

while index + 10 < input.count {
    var result = ""
    for i in index..<index+10 {
        result += input[i]
    }
    print(result)
    index += 10
}
var result = ""
for i in index..<input.count {
    result += input[i]
}
print(result)