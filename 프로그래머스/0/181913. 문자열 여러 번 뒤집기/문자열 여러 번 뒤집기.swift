import Foundation

func solution(_ my_string:String, _ queries:[[Int]]) -> String {
    var result = my_string
    queries.forEach {
        let start = result.index(result.startIndex, offsetBy: $0[0])
        let end = result.index(result.startIndex, offsetBy: $0[1])
        result.replaceSubrange(start...end, with: result[start...end].reversed())
    }
    return result
}