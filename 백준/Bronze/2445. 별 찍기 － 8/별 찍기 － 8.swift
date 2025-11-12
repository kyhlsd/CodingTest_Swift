let n = Int(readLine()!)!
for i in 1...n {
    var result = ""
    for j in 1...2 * n {
        if j <= i || j > 2 * n - i {
            result += "*"
        } else {
            result += " "
        }
    }
    print(result)
}
for i in stride(from: n - 1, to: 0, by: -1) {
    var result = ""
    for j in 1...2 * n {
        if j <= i || j > 2 * n - i {
            result += "*"
        } else {
            result += " "
        }
    }
    print(result)
}