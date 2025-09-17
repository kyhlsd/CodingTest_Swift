import Foundation

func solution(_ n:Int, _ q:[[Int]], _ ans:[Int]) -> Int {
    var list = [Set<Int>]()
    for i in 1...(n - 4) {
        for j in (i + 1)...(n - 3) {
            for k in (j + 1)...(n - 2) {
                for l in (k + 1)...(n - 1) {
                    for m in (l + 1)...n {
                        list.append([i, j, k, l, m])
                    }
                }
            }
        }
    }
        
    for i in 0..<q.count {
        list = list.filter { numSet in
            numSet.intersection(Set(q[i])).count == ans[i]
        }
    }
        
    return list.count
}