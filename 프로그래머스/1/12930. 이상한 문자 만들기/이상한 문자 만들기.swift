func solution(_ s:String) -> String {
    var splits = s.split(separator: " ", omittingEmptySubsequences: false)
    var result = ""
    for split in splits {
        for (i, char) in split.enumerated() {
            if i % 2 == 0 {
                result += char.uppercased()
            } else {
                result += char.lowercased()
            }
        }
        result += " "
    }
    result.removeLast()
    return result
}