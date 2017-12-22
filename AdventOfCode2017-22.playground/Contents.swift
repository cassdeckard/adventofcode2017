//: Playground - noun: a place where people can play

import Foundation

let example = """
..#
#..
...
"""

enum Direction {
    case up, down, left, right
    
    var rotatedRight : Direction {
        switch self {
        case .up:
            return .right
        case .down:
            return .left
        case .left:
            return .up
        case .right:
            return .down
        }
    }
    
    var rotatedLeft : Direction {
        switch self {
        case .up:
            return .left
        case .down:
            return .right
        case .left:
            return .down
        case .right:
            return .up
        }
    }
}

func move(_ position: Coordinates, _ direction: Direction) -> Coordinates {
    switch direction {
    case .up:
        return (x: position.x, y: position.y - 1)
    case .down:
        return (x: position.x, y: position.y + 1)
    case .left:
        return (x: position.x - 1, y: position.y)
    case .right:
        return (x: position.x + 1, y: position.y)
    }
}

struct Virus {
    var position = Coordinates(x: 0, y: 0)
    var direction = Direction.up
    
    mutating func act(on map: inout [String : Coordinates]) {
        if map.isInfected(node: self.position) {
            self.direction = self.direction.rotatedRight
        } else {
            self.direction = self.direction.rotatedLeft
        }
        map.toggle(node: self.position)
        self.position = move(self.position, self.direction)
    }
}

var map = example.asMap
var virus = Virus()

for _ in 1...70 {
    virus.act(on: &map)
}
print(map.grid)
