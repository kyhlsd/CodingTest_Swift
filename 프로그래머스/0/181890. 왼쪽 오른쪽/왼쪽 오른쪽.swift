import Foundation

func solution(_ str_list:[String]) -> [String] {
    let lIndex = str_list.firstIndex(of: "l") ?? Int.max
    let rIndex = str_list.firstIndex(of: "r") ?? Int.max
    if lIndex > rIndex, rIndex < str_list.count - 1 {
        return Array(str_list[(rIndex + 1)..<str_list.count])
    } else if lIndex < rIndex {
        return Array(str_list[0..<lIndex])
    } else {
        return []
    }
}