import Foundation

func solution(_ players:[Int], _ m:Int, _ k:Int) -> Int {
    
    var servers = [Int](repeating: 0, count: 24)
    var availablePeople = m - 1
    var result = 0
    
    for i in 0..<k {
        let need = players[i] - availablePeople
        if need > 0 {
            servers[i] = (need + m - 1) / m
            availablePeople += servers[i] * m
        }
    }
    
    for i in k..<24 {
        availablePeople -= servers[i-k] * m
        let need = players[i] - availablePeople
        if need > 0 {
            servers[i] = (need + m - 1) / m
            availablePeople += servers[i] * m
        }
    }
    
    servers.forEach {
        result += $0
    }
    
    return result
}