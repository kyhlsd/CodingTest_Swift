let n = Int(readLine()!)!
var dict = [String: Bool]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { String($0) }
    if input[1] == "enter" {
        dict[input[0], default: false] = true
    } else {
        dict[input[0], default: false] = false
    }
}

dict.filter { $0.value }
    .map { $0.key }
    .sorted { $0 > $1 }
    .forEach { print($0) }