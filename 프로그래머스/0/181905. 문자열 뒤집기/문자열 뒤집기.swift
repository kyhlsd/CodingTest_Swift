import Foundation

func solution(_ my_string:String, _ s:Int, _ e:Int) -> String {
    var stringArray = Array(my_string)
    stringArray[s...e].reverse()
    return String(stringArray)
}