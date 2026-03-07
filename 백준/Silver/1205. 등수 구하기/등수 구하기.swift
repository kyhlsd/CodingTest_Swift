let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], myScore = input[1], p = input[2]
var result = ""

if n == 0 {
    result = "1"
} else {
    let scores = readLine()!.split(separator: " ").map { Int($0)! }
    let length = scores.count
    
    if length >= p && scores[p - 1] >= myScore {
        result = "-1"
    } else if scores[0] <= myScore {
        result = "1"
    } else {
        var left = 0
        var right = length > p ? p - 1 : length
        
        while right - left > 1 {
            let center = (left + right) / 2
            if scores[center] == myScore {
                var i = center - 1
                while i > 0 && scores[i] == myScore {
                    i -= 1
                }
                result = "\(i + 2)"
                break
            } else if scores[center] > myScore {
                left = center
            } else {
                right = center
            }
        }

        if result == "" {
            result = "\(left + 2)"
        }
    }
}

print(result)