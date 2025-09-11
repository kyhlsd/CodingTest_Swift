import Foundation

func solution(_ info:[[Int]], _ n:Int, _ m:Int) -> Int {
    var queue = [(0, 0, 0)]
    let count = info.count
    var visited = [[[Bool]]](repeating: [[Bool]](repeating: [Bool](repeating: false, count: m), count: n), count: count + 1)
    var minA = Int.max
    
    while !queue.isEmpty {
        let item = queue.removeFirst()
        let index = item.0
        let sumA = item.1
        let sumB = item.2
        if index == count {
            minA = min(minA, sumA)
            continue
        }
        
        let newSumA = sumA + info[index][0]
        let newSumB = sumB + info[index][1]
        if newSumA < n, !visited[index][newSumA][sumB] {
            visited[index][newSumA][sumB] = true
            queue.append((index + 1, newSumA, sumB))
        }
        if newSumB < m, !visited[index][sumA][newSumB] {
            visited[index][sumA][newSumB] = true
            queue.append((index + 1, sumA, newSumB))
        }
    }
    return minA == Int.max ? -1 : minA
}