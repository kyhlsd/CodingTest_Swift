import Foundation

func solution(_ picture:[String], _ k:Int) -> [String] {
    var result = [String]()
    for item in picture {
        var temp = [Character]()
        for char in item {
            temp += [Character](repeating: char, count: k)
        }
        result += [String](repeating: String(temp), count: k)
    }
    return result
}