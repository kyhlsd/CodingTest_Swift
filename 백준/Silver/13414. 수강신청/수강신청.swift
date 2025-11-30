let input = readLine()!.split(separator: " ").map { Int($0)! }
let k = input[0], l = input[1]
var dict = [String: Int]()

for i in 0..<l {
    let number = readLine()!
    dict[number] = i
}

var sorted = dict.sorted { $0.value < $1.value }
var result = ""

if sorted.count >= k {
    for i in 0..<k {
        result += sorted[i].key + "\n"
    }
} else {
    for item in sorted {
        result += item.key + "\n"
    }
}
print(result)