let input = readLine()!.split(separator: " ").map { Int(String($0))! }
var array = readLine()!.split(separator: " ").map { Int(String($0))! }

var count = [Int: Int]()
var order = [Int: Int]()
for num in array {
    if count[num] == nil {
        order[num] = order.count
    }
    count[num, default: 0] += 1
}

array.sort {
    if count[$0]! == count[$1]! {
        return order[$0]! < order[$1]!
    } else {
        return count[$0]! > count[$1]!
    }
}

var answer = ""
for num in array {
    answer += "\(num) "
}
answer.removeLast()
print(answer)