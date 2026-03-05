let input = readLine()!.split(separator: " ")
let n = Int(input[0])!
let maxPeople = input[1] == "Y" ? 2 : input[1] == "F" ? 3 : 4
var people = Set<String>()
for _ in 0..<n {
    people.insert(readLine()!)
}

print(people.count / (maxPeople - 1))