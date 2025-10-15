import Foundation

let morses = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
let alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

func solution(_ letter:String) -> String {
    
    var result = ""
    let letterMorses = letter.split(separator: " ").map { String($0) }
    for letterMorse in letterMorses {
        if let index = morses.firstIndex(of: letterMorse) {
            result += alphabet[index]
        }
    }
    return result
}