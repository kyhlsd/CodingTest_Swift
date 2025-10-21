import Foundation

func solution(_ numbers:String) -> Int64 {
    var array = [Character]()
    var result = ""
    for char in numbers {
        array.append(char)
        switch String(array) {
            case "zero":
                result += "0"
                array = []
            case "one":
                result += "1"
                array = []
            case "two":
                result += "2"
                array = []
            case "three":
                result += "3"
                array = []
            case "four":
                result += "4"
                array = []
            case "five":
                result += "5"
                array = []
            case "six":
                result += "6"
                array = []
            case "seven":
                result += "7"
                array = []
            case "eight":
                result += "8"
                array = []
            case "nine":
                result += "9"
                array = []
            default: break
        }
    }
    
    return Int64(result)!
}