let s = readLine()!.map { String($0) }
let p = readLine()!.map { String($0) }

var current = 0
var result = 0

while current < p.count {
    var indexes = [Int]()
    for i in 0..<s.count {
        if s[i] == p[current] {
            indexes.append(i)
        }
    }
    
    var maxCount = 0
    for index in indexes {
        var count = 0
        while index + count < s.count,
              current + count < p.count,
              s[index + count] == p[current + count] {
            count += 1
        }
        maxCount = max(maxCount, count)
    }
    
    current += maxCount
    result += 1
}

print(result)