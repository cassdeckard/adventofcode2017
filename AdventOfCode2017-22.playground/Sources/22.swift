import Foundation

public typealias Coordinates = (x: Int, y: Int)

public func < (lhs: Coordinates, rhs: Coordinates) -> Bool {
    if lhs.y < rhs.y {
        return true
    } else if lhs.y > rhs.y {
        return false
    } else {
        return lhs.x < rhs.x
    }
}

extension String {
    public var asMap : [String : Coordinates] {
        let _map = self.split(separator: "\n")
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
        return map
    }
}

extension Dictionary where Key == String, Value == Coordinates {
    
    public var maxX : Int {
        let x = self.values.map { abs($0.x) }.max()
        return x ?? 0
    }
    
    public var maxY : Int {
        let y = self.values.map { abs($0.y) }.max()
        return y ?? 0
    }
    
    public func isInfected(node: Coordinates) -> Bool {
        return self[String(describing: node)] != nil
    }
   
    
    public mutating func disinfect(node: Coordinates) {
        self[String(describing: node)] = nil
    }
    
    public mutating func infect(node: Coordinates) {
        self[String(describing: node)] = node
    }
    
    public mutating func toggle(node: Coordinates) {
        if isInfected(node: node) {
            disinfect(node: node)
        } else {
            infect(node: node)
        }
    }
    
    public var grid : String {
        var result = ""
        for y in -maxY...maxY {
            for x in -maxX...maxX {
                let pos = Coordinates(x: x, y: y)
                result += "\(self.isInfected(node: pos) ? "#" : ".") "
            }
            result += "\n"
        }
        return result
    }
}

public enum Direction {
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

public func move(_ position: Coordinates, _ direction: Direction) -> Coordinates {
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

public struct Virus {
    var position = Coordinates(x: 0, y: 0)
    var direction = Direction.up
    
    public mutating func act(on map: inout [String : Coordinates]) {
        if map.isInfected(node: self.position) {
            self.direction = self.direction.rotatedRight
        } else {
            self.direction = self.direction.rotatedLeft
        }
        map.toggle(node: self.position)
        self.position = move(self.position, self.direction)
    }
    
    public init() {
    }
}
