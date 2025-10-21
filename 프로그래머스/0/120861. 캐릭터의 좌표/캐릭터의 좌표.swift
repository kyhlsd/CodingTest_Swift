import Foundation

func solution(_ keyinput:[String], _ board:[Int]) -> [Int] {
    let maxX = board[0] / 2
    let maxY = board[1] / 2
    var x = 0
    var y = 0
    
    for input in keyinput {
        switch input {
            case "up":
                y = min(y + 1, maxY)
            case "down":
                y = max(y - 1, -maxY)
            case "left":
                x = max(x - 1, -maxX)
            case "right":
                x = min(x + 1, maxX)
            default: break
        }
    }
    return [x, y]
}