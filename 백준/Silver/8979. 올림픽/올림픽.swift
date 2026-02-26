let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], k = input[1]
var scores = [[Int]]()
for _ in 0..<n {
    scores.append(readLine()!.split(separator: " ").map { Int($0)! })
}

scores.sort {
    if $0[1] == $1[1] {
        if $0[2] == $1[2] {
            if $0[3] == $1[3] {
                return $0[0] == k
            } else {
                return $0[3] > $1[3]
            }
        } else {
            return $0[2] > $1[2]
        }
    } else {
        return $0[1] > $1[1]
    }
}

let index = scores.firstIndex {
    $0[0] == k
}!
print(index + 1)