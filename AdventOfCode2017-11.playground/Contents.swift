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
    
    func movedTowardOrigin() -> HexPosition? {
        if self == HexPosition.origin { return nil }
        
        var direction : Direction?
        if x + y == 0 {
            // move along se-nw axis
            direction = x > 0 ? .nw : .se
        }
        else if abs(x) > abs(y) {
            // move along ne-sw axis
            direction = x > 0 ? .sw : .ne
        } else {
            // move along n-s axis
            direction = y > 0 ? .s : .n
        }
        return self.moved(direction ?? .n)
    }
}

extension HexPosition : CustomDebugStringConvertible {
    var debugDescription : String {
        return "(\(x), \(y))"
    }
}

extension HexPosition : Equatable {
    static func ==(lhs: HexPosition, rhs: HexPosition) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y
    }
}

func process(_ input: String) -> HexPosition {
    return input
        .split(separator: ",")
        .flatMap { HexPosition.Direction(rawValue: String($0)) }
        .reduce(HexPosition.origin) { $0.moved($1) }
}


assert(HexPosition.origin.moved(.ne).moved(.sw) == HexPosition.origin)
assert(HexPosition.origin.moved(.n).moved(.s) == HexPosition.origin)
assert(HexPosition.origin.moved(.nw).moved(.se) == HexPosition.origin)
assert(HexPosition.origin.moved(.se).moved(.nw) == HexPosition.origin)
assert(HexPosition.origin.moved(.s).moved(.n) == HexPosition.origin)
assert(HexPosition.origin.moved(.sw).moved(.ne) == HexPosition.origin)

assert(HexPosition.origin.moved(.n).movedTowardOrigin()! == HexPosition.origin)
assert(HexPosition.origin.moved(.ne).movedTowardOrigin()! == HexPosition.origin)
assert(HexPosition.origin.moved(.se).movedTowardOrigin()! == HexPosition.origin)
assert(HexPosition.origin.moved(.s).movedTowardOrigin()! == HexPosition.origin)
assert(HexPosition.origin.moved(.sw).movedTowardOrigin()! == HexPosition.origin)
assert(HexPosition.origin.moved(.nw).movedTowardOrigin()! == HexPosition.origin)

assert(HexPosition.origin.movedTowardOrigin() == nil)

let examples = [
    "ne,ne,ne",
    "ne,ne,sw,sw",
    "ne,ne,s,s",
    "se,sw,se,sw,sw"
]

examples.map(process)
