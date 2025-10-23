import Foundation

func getPrimeFactors(_ n: Int) -> [Int] {
    var n = n
    var array = [Int]()
    var num = 2
    while n != 1, num <= Int(sqrt(Double(n))) {
        if n % num == 0 {
            array.append(num)
            n /= num
            num = 2
        } else {
            num += 1
        }
    }
    if n != 1 {
        array.append(n)
    }
    return array
}

func solution(_ a:Int, _ b:Int) -> Int {
    let arrayA = getPrimeFactors(a)
    var arrayB = getPrimeFactors(b)
    
    arrayA.forEach {
        if let index = arrayB.firstIndex(of: $0) {
            arrayB.remove(at: index)
        }
    }
    
    arrayB.removeAll {
        $0 == 2 || $0 == 5
    }
    
    return arrayB.isEmpty ? 1 : 2
}