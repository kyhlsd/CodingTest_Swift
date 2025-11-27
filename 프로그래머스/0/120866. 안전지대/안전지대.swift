import Foundation

func solution(_ board:[[Int]]) -> Int {
    let n = board.count
    var map = [[Int]](repeating: [Int](repeating: 0, count: n),count: n)
    let moves = [(-1,-1), (-1,0), (-1,1),
                 (0,-1), (0,0), (0,1),
                (1,-1), (1,0), (1,1)]
    for y in 0..<n {
        for x in 0..<n {
            if board[y][x] == 1 {
                for move in moves {
                    let ny = y + move.0
                    let nx = x + move.1
                    if ny >= 0 && ny < n && nx >= 0 && nx < n {
                        map[ny][nx] = 1
                    }
                }
            }
        }
    }
    var sum = 0
    for y in 0..<n {
        for x in 0..<n {
            sum += map[y][x]
        }
    }
    return n * n - sum
}