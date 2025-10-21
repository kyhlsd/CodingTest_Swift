import Foundation

func solution(_ s:String) -> String {
    var dict = [Character: Int]()
    for char in s {
        dict[char, default: 0] += 1
    }
    return dict.filter { $0.value == 1 }
        .map { String($0.key) }
        .sorted()
        .reduce(into: "") { result, char in
            result += char
        }
}