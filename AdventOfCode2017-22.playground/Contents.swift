//: Playground - noun: a place where people can play

import Foundation

let example = """
..#
#..
...
"""

typealias Coordinates = (x: Int, y: Int)

func < (lhs: Coordinates, rhs: Coordinates) -> Bool {
    if lhs.y < rhs.y {
        return true
    } else if lhs.y > rhs.y {
        return false
    } else {
        return lhs.x < rhs.x
    }
}

extension Dictionary where Key == String, Value == Coordinates {
    
    var maxX : Int {
        let x = self.values.map { abs($0.x) }.max()
        return x ?? 0
    }
    
    var maxY : Int {
        let y = self.values.map { abs($0.y) }.max()
        return y ?? 0
    }
    
    var grid : String {
        var result = ""
        for y in -maxY...maxY {
            for x in -maxX...maxX {
                let pos = Coordinates(x: x, y: y)
                let node = self[String(describing: pos)] == nil ? "." : "#"
                result += "\(node) "
            }
            result += "\n"
        }
        return result
    }
}

var _map = example.split(separator: "\n")
    .map { Array($0) }

var map = [String : Coordinates]()
for (y, row) in _map.enumerated() {
    for (x, state) in row.enumerated() {
        let position: Coordinates = (x - 1, y - 1)
        if state == "#" {
            map[String(describing: position)] = position
        }
    }
}

//map["(x: -7, y: -5)"] = (x: -7, y: -5)
print(map.grid)
