let aeiou: [Character] = ["a", "e", "i", "o", "u"]
var result = ""

while true {
    let input = readLine()!
    if input == "end" {
        break
    }
    let valid = isValid(input) ? "" : "not "
    result += "<\(input)> is \(valid)acceptable.\n"
}
result.removeLast()
print(result)

func isValid(_ input: String) -> Bool {
    var lastIsAEIOU = true
    var containsAEIOU = false
    var count = 0
    var lastChar: Character = " "
    
    for char in input {
        if lastChar == char && char != "e" && char != "o" {
            return false
        }
        lastChar = char
        
        if aeiou.contains(char) {
            containsAEIOU = true
            
            if lastIsAEIOU {
                count += 1
                if count >= 3 {
                    return false
                }
            } else {
                lastIsAEIOU = true
                count = 1
            }
        } else {
            if lastIsAEIOU {
                lastIsAEIOU = false
                count = 1
            } else {
                count += 1
                if count >= 3 {
                    return false
                }
            }
        }
    }
    
    return containsAEIOU
}