let counts = Int(readLine()!)!
var switches = readLine()!.split(separator: " ").map { $0 == "1" }
let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    if input[0] == 1 {
        for i in stride(from: input[1] - 1, to: counts, by: input[1]) {
            switches[i].toggle()
        }
    } else {
        switches[input[1] - 1].toggle()
        var i = 1
        while input[1] - 1 - i >= 0
                && input[1] - 1 + i < counts
                && switches[input[1] - 1 - i] == switches[input[1] - 1 + i] {
            switches[input[1] - 1 - i].toggle()
            switches[input[1] - 1 + i].toggle()
            i += 1
        }
    }
}

var result = ""
for i in 0..<switches.count {
    if i != 0 && i % 20 == 0 {
        result.removeLast()
        result += "\n"
    }
    result += switches[i] ? "1 " : "0 "
}
result.removeLast()
print(result)