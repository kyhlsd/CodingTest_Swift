let n = Int(readLine()!)!
var array = [[Int]]()
array.reserveCapacity(n)

for _ in 0..<n {
    array.append(readLine()!.split(separator: " ").map { Int($0)! })
}
array.sort {
    if $0[0] == $1[0] {
        return $0[1] < $1[1]
    } else {
        return $0[0] < $1[0]
    }
}

var result = ""
array.forEach {
    result += "\($0[0]) \($0[1])\n"
}
result.removeLast()
print(result)