//: Playground - noun: a place where people can play

import Foundation

let example = """
0 <-> 2
1 <-> 1
2 <-> 0, 3, 4
3 <-> 2, 4
4 <-> 2, 3, 6
5 <-> 6
6 <-> 4, 5
"""

struct Node {
    let id: Int
    let neighbors: [Int]
}

extension Node : CustomStringConvertible {
    var description: String {
        return "\(id) \(neighbors)"
    }
}

func process(_ input: String) -> [Int : Node] {
    return input
        .replacingOccurrences(of: " <-> ", with: ":")
        .replacingOccurrences(of: ", ", with: ",")
        .split(separator: "\n")
        .map { $0.split(separator: ":") }
        .map {
            let id = Int($0[0])!
            let neighbors = $0[1].split(separator: ",").map { Int($0)! }
            return Node(id: id, neighbors: neighbors)
    }
        .reduce([Int : Node]()) {
            (acc : [Int : Node], next : Node) -> [Int : Node] in
            var result = acc
            result[next.id] = next
            return result
    }
}

func clique(for nodeId: Int, in nodeMap: [Int : Node]) -> Set<Int> {
    var remainingNodes = nodeMap
    guard let node = remainingNodes.removeValue(forKey: nodeId) else { return Set<Int>() }
    let neighbors = Set(node.neighbors)
    return neighbors.union(neighbors.flatMap {
        clique(for: $0, in: remainingNodes)
    })
}

print(clique(for: 0, in: process(example)))
