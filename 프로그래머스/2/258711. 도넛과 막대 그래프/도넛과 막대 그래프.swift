import Foundation

func solution(_ edges:[[Int]]) -> [Int] {
    var inLines: [Int: [Int]] = [:]
    var outLines: [Int: [Int]] = [:]
    
    for edge in edges {
        inLines[edge[1], default: []].append(edge[0])
        outLines[edge[0], default: []].append(edge[1])
    }
    
    let pointOutLine = outLines
        .filter { $0.value.count >= 2 }
        .filter { inLines[$0.key] == nil }
        .first!
    
    let point = pointOutLine.key
    let graphs = pointOutLine.value.count
    
    for outLine in pointOutLine.value {
        inLines[outLine]?.removeAll { $0 == point }
    }
    
    let eights = outLines
        .filter { $0.value.count == 2 }
        .filter { inLines[$0.key]?.count == 2}
        .count
    
    let sticks = inLines
        .filter { $0.value.count <= 1 }
        .filter { outLines[$0.key] == nil }
        .count
    
    let donuts = graphs - eights - sticks
    return [point, donuts, sticks, eights]
}