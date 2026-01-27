let n = readLine()!.split(separator: " ").map { Int(String($0))! }[0]
let array = readLine()!.split(separator: " ").map { Int(String($0))! }
var counts = [Int](repeating: 0, count: array.count)

for i in 0..<(array.count - 1) {
    for j in (i + 1)..<array.count {
        var visible = true
        for x in (i + 1)..<j {
            let y = Double(array[j] - array[i]) / Double(j - i) * Double(x - i) + Double(array[i])
            if y <= Double(array[x]) {
                visible = false
                break
            }
        }
        if visible {
            counts[i] += 1
            counts[j] += 1
        }
    }
}

print(counts.max() ?? 0)