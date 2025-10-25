import Foundation

func solution(_ A:String, _ B:String) -> Int {
    var a = A
    for i in 0..<a.count {
        if a == B {
            return i
        }
        a.insert(a.removeLast(), at: a.startIndex)
    }
    return -1
}