let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let p = input[0], m = input[1]

var rooms = [[(Int, String)]]()
var front = 0

for _ in 0..<p {
    let input = readLine()!.split(separator: " ").map { String($0)}
    let level = Int(input[0])!, nickname = input[1]
    var isEntered = false
    for i in 0..<rooms.count {
        if abs(rooms[i][0].0 - level) <= 10, rooms[i].count < m {
            rooms[i].append((level, nickname))
            isEntered = true
            break
        }
    }
    if !isEntered {
        rooms.append([(level, nickname)])
    }
}

for i in 0..<rooms.count {
    rooms[i].sort { $0.1 < $1.1 }
}

var answer = ""
for room in rooms {
    if room.count == m {
        answer += "Started!\n"
    } else {
        answer += "Waiting!\n"
    }
    for item in room {
        answer += "\(item.0) \(item.1)\n"
    }
}
answer.removeLast()
print(answer)