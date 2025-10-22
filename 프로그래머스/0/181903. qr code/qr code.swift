import Foundation

func solution(_ q:Int, _ r:Int, _ code:String) -> String {
    var array = [Character]()
    for (i, char) in code.enumerated() {
        if i % q == r {
            array.append(char)
        }
    }
    return String(array)
}