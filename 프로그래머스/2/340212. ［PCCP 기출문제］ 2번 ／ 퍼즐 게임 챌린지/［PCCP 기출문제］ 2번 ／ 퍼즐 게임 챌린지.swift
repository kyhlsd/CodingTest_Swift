import Foundation

func solution(_ diffs:[Int], _ times:[Int], _ limit:Int64) -> Int {
    let limit = limit - Int64(times[0])    
    
    func checkPossiblity(level: Int) -> Bool {
        var limit = limit
            
        for i in 1..<diffs.count {
            let count = diffs[i] - level
            if count > 0 {
                limit -= Int64((times[i - 1] + times[i]) * count + times[i])
            } else {
                limit -= Int64(times[i])
            }
            if limit < 0 {
                return false
            }
                
        }
        return true
    }
        
    var max = 100000
    var min = 0
    var level = 50000
    
    while (max - min) > 1, max > 1 {
        if checkPossiblity(level: level) {
            max = level
        } else {
            min = level
        }
        level = (max + min) / 2
    }
        
    return max
}