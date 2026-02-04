let n = Int(readLine()!)!
var array = [String]()
for _ in 0..<n {
    array.append(readLine()!)
}
var result = ""

let kbs1Index = array.firstIndex(of: "KBS1")!
for _ in 0..<kbs1Index {
    result += "1"
}
array.insert(array.remove(at: kbs1Index), at: 0)
for _ in 0..<kbs1Index {
    result += "4"
}

let kbs2Index = array.firstIndex(of: "KBS2")!
for _ in 0..<kbs2Index {
    result += "1"
}
array.insert(array.remove(at: kbs2Index), at: 1)
for _ in 1..<kbs2Index {
    result += "4"
}

print(result)