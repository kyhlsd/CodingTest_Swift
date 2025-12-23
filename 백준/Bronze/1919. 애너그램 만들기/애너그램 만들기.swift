let firstWord = readLine()!.map { String($0) }
let secondWord = readLine()!.map { String($0) }
var dict: [String: Int] = [:]

for char in firstWord {
    dict[char, default: 0] += 1
}

for char in secondWord {
    dict[char, default: 0] -= 1
}

print(dict.map { abs($0.value) }.reduce(0, +))