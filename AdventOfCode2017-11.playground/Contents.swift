//: Playground - noun: a place where people can play

import Foundation

struct HexPosition {
    enum Direction : String {
        case n, ne, se, s, sw, nw
        
        var offsets : (Int, Int) {
            switch self {
            case .n:
                return (0, 1)
            case .ne:
                return (1, 0)
            case .se:
                return (1, -1)
            case .s:
                return (0, -1)
            case .sw:
                return (-1, 0)
            case .nw:
                return (-1, 1)
            }
        }
    }
    
    let x, y: Int
    
    static var origin : HexPosition {
        return HexPosition(x: 0, y: 0)
    }
    
    func moved(_ direction: Direction) -> HexPosition {
        return HexPosition(x: x + direction.offsets.0,
                           y: y + direction.offsets.1)
    }
}

extension HexPosition : CustomDebugStringConvertible {
    var debugDescription : String {
        return "(\(x), \(y))"
    }
}

func process(_ input: String) -> HexPosition {
    return input
        .split(separator: ",")
        .flatMap { HexPosition.Direction(rawValue: String($0)) }
        .reduce(HexPosition.origin) { $0.moved($1) }
}

HexPosition.origin
    .moved(.ne)
    .moved(.sw)


HexPosition.origin
    .moved(.n)
    .moved(.s)


HexPosition.origin
    .moved(.nw)
    .moved(.se)

let examples = [
    "ne,ne,ne",
    "ne,ne,sw,sw",
    "ne,ne,s,s",
    "se,sw,se,sw,sw"
]

examples.map(process)
