let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0], m = input[1], k = input[2]
var note: [[Bool]] = .init(repeating: .init(repeating: false, count: m), count: n)

for _ in 0..<k {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    var height = input[0]
    var length = input[1]
    var puzzle: [[Bool]] = []
    for _ in 0..<height {
        puzzle.append(readLine()!.split(separator: " ").map {
            Int(String($0))! == 1
        })
    }
    
    var isAdded = false
    for _ in 0..<4 {
        if height <= n && length <= m {
            for y in 0...(n - height) {
                for x in 0...(m - length) {
                    var spaceEnough = true
                    for h in 0..<height {
                        for l in 0..<length {
                            if note[y + h][x + l], puzzle[h][l] {
                                spaceEnough = false
                                break
                            }
                        }
                        if !spaceEnough { break }
                    }
                    if spaceEnough {
                        isAdded = true
                        for h in 0..<height {
                            for l in 0..<length {
                                note[y + h][x + l] = note[y + h][x + l] || puzzle[h][l]
                            }
                        }
                        break
                    }
                }
                if isAdded { break }
            }
        }
        
        if isAdded { break }
        
        var rotate: [[Bool]] = .init(repeating: .init(repeating: false, count: height), count: length)
        for h in 0..<height {
            for l in 0..<length {
                rotate[l][height - h - 1] = puzzle[h][l]
            }
        }
        puzzle = rotate
        swap(&height, &length)
    }
}

let result = note.reduce(0) { sum, row in
    sum + row.reduce(0) { $0 + ($1 ? 1 : 0)}
}
print(result)