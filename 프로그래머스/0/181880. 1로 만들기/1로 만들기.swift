import Foundation

func solution(_ num_list:[Int]) -> Int {
//     let sorted = num_list.sorted()
//     var count = 0
//     var number = 2
//     var result = 0
    
//     for item in sorted {
//         while number <= item {
//             count += 1
//             number *= 2
//         }
//         result += count
//     }
    var result = 0
    for num in num_list {
        result += Int(log2(Float(num)))
    }
    return result
}