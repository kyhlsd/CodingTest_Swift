import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [[Int]] {
    var result = [[Int]]()
    var temp = [Int]()
    
    for num in num_list {
        temp.append(num)
        if temp.count == n {
            result.append(temp)
            temp = []
        }    
    }
    return result
}