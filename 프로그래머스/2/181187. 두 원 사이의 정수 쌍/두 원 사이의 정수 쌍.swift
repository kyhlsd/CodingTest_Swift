import Foundation

func isqrt(_ n: Int64) -> Int64 {
    if n <= 0 { return 0 }
    var x = Int64(Double(n).squareRoot())
    while (x + 1) * (x + 1) <= n { x += 1 }
    while x * x > n { x -= 1 }
    return x
}

func solution(_ r1: Int, _ r2: Int) -> Int64 {
    let R1 = Int64(r1)
    let R2 = Int64(r2)
    var count: Int64 = 0

    for xi in -r2...r2 {
        let x = Int64(xi)
        let high = R2 * R2 - x * x
        if high < 0 { continue }                      // 이 x에 대해 가능한 y가 없음
        let low = max(Int64(0), R1 * R1 - x * x)      // y^2 >= low, y^2 <= high

        let a = isqrt(high)                           // floor(sqrt(high))
        var b = isqrt(low)                            // floor(sqrt(low))
        if b * b < low { b += 1 }                     // b = ceil(sqrt(low))

        if b == 0 {
            // |y| <= a (0 포함): 1 (y=0) + 2*a (±1..±a)
            count += 1 + 2 * a
        } else if a >= b {
            // |y| in [b..a], 양쪽 부호: 2 * (a - b + 1)
            count += 2 * (a - b + 1)
        } // else a < b -> 이 x에 대해 해당 annulus 내 y 없음
    }

    return count
}