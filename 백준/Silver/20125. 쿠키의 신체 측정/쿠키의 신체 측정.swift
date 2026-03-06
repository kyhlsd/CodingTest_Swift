let n = Int(readLine()!)!
var map: [[String]] = []
for _ in 0..<n {
    map.append(readLine()!.map { String($0) })
}

let dx = [-1, 1, 0, 0]
let dy = [0, 0, -1, 1]
var heart: (Int, Int)!
var leftArm: Int!
var rightArm: Int!
var waist: Int!
var leftLeg: Int!
var rightLeg: Int!

for i in 1..<(n - 1) {
    var isHeart = true
    for j in 1..<(n - 1) {
        isHeart = true
        for k in 0..<4 {
            let nx = j + dx[k]
            let ny = i + dy[k]
            if map[ny][nx] == "_" {
                isHeart = false
                break
            }
        }
        
        if isHeart {
            heart = (i, j)
            break
        }
    }
    if isHeart {
        break
    }
}

for i in 0..<n {
    if map[heart.0][i] == "*" {
        leftArm = heart.1 - i
        break
    }
}

for i in stride(from: n - 1, through: 0, by: -1) {
    if map[heart.0][i] == "*" {
        rightArm = i - heart.1
        break
    }
}

for i in (heart.0 + 1)..<n {
    if map[i][heart.1] == "_" {
        waist = i - heart.0 - 1
        break
    }
}

leftLeg = n - heart.0 - waist - 1
for i in (heart.0 + waist + 1)..<n {
    if map[i][heart.1 - 1] == "_" {
        leftLeg = i - heart.0 - waist - 1
        break
    }
}

rightLeg = n - heart.0 - waist - 1
for i in (heart.0 + waist + 1)..<n {
    if map[i][heart.1 + 1] == "_" {
        rightLeg = i - heart.0 - waist - 1
        break
    }
}

var result = ""
result += "\(heart.0 + 1) \(heart.1 + 1)\n"
result += "\(leftArm!) \(rightArm!) \(waist!) \(leftLeg!) \(rightLeg!)"
print(result)