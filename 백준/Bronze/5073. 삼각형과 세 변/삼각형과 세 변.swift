while true {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let sorted = input.sorted()
    let a = sorted[0], b = sorted[1], c = sorted[2]
    if a == 0 && b == 0 && c == 0 { break }
    if a + b <= c {
        print("Invalid")
        continue
    }
    switch Set(sorted).count {
    case 1:
        print("Equilateral")
    case 2:
        print("Isosceles")
    default:
        print("Scalene")
    }
}