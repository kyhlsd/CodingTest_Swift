import Foundation

func solution(_ a:Int, _ b:Int, _ c:Int) -> Int {
    let set = Set([a, b, c])
    
    switch set.count {
        case 1:
            return (3 * a) * (3 * a * a) * (3 * a * a * a)
        case 2:
            return (a + b + c) * (a * a + b * b + c * c)
        case 3:
            return (a + b + c)
        default:
            return 0
    }
}