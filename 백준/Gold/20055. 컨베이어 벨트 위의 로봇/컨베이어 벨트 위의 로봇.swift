let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0], k = input[1]
var array = readLine()!.split(separator: " ").map { (Int(String($0))!, false) }
var zeroCount = array.filter { $0.0 == 0 }.count
var result = 0

while true {
    let pop = array.popLast()!
    array.insert(pop, at: 0)
    
    array[n - 1].1 = false
    
    for i in stride(from: n - 2, to: 0, by: -1) {
        if array[i].1, !array[i + 1].1, array[i + 1].0 > 0 {
            array[i + 1].1 = true
            array[i].1 = false
            array[i + 1].0 -= 1
            if array[i + 1].0 == 0 {
                zeroCount += 1
            }
        }
    }
    
    array[n - 1].1 = false
    
    if array[0].0 > 0 {
        array[0].1 = true
        array[0].0 -= 1
        if array[0].0 == 0 {
            zeroCount += 1
        }
    }
    
    result += 1
    if zeroCount >= k {
        break
    }
}

print(result)