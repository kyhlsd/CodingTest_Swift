let n = Int(readLine()!)!
var array = [Int]()

for _ in 0..<n {
    array.append(Int(readLine()!)!)
}

array.sort()
var result = ""
array.forEach { result += "\($0)\n"}
result.removeLast()
print(result)