let _ = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map { Int($0)! }
let x = Int(readLine()!)!
    
var dict = [Int: Void]()
    
var count = 0
for element in input {
    if let _ = dict[x - element] {
        count += 1
    } else {
        dict[element] = ()
    }
}
    
print(count)