import Foundation

func solution(_ polynomial:String) -> String {
    var x = 0
    var num = 0
    var result = ""
    
    let splits = polynomial.split(separator: " ")
        .filter { $0 != "+" }
    for split in splits {
        if split.last! == "x" {
            var temp = split
            temp.removeLast()
            let coefficient = Int(temp) ?? 1
                x += coefficient
        } else {
            let coefficient = Int(split) ?? 1
            num += coefficient
        }
    }
    
    if x > 0 {
        if x == 1 {
            result += "x"
        } else {
            result += "\(x)x"
        }
        if num > 0 {
            result += " + \(num)"
        }
    } else {
        result += "\(num)"
    }
    return result
}