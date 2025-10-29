import Foundation

func solution(_ chicken:Int) -> Int {
    var totalChicken = 0
    
    var current = chicken
    while current >= 10 {
        var coupons = current / 10
        var remains = current % 10
        current = coupons + remains
        totalChicken += coupons
    }
    
    return totalChicken
}