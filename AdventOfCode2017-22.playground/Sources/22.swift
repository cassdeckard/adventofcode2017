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
        var _map = self.split(separator: "\n")
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
    
    public var grid : String {
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
