import Foundation


public typealias Vector = (x: Int, y: Int, z: Int)

public struct Point {
    let position: Vector
    let velocity: Vector
    let acceleration: Vector
    
    func step() -> Point {
        let v = velocity + acceleration
        let p = position + v
        return Point(position: p, velocity: v, acceleration: acceleration)
    }
    
    var distance: Int {
        return abs(position.x + position.y + position.z)
    }
}

public func +(lhs: Vector, rhs: Vector) -> Vector {
    return (x: lhs.x + rhs.x, y: lhs.y + rhs.y, z: lhs.z + rhs.z)
}

extension Point : CustomStringConvertible {
    public var description: String {
        return "<p=\(position) v=\(velocity) a=\(acceleration) d=\(distance)>"
    }
}

extension Array where Element == Point {
    public var description : String {
        return self.reduce("[\n") { $0 + "    \($1)\n" } + "]"
    }
    
    public func step() -> [Element] {
        return self.map { $0.step() }
    }
    
    public func collisions() -> [Int] {
        var result = Set<Int>()
        var map = [String:Int]()
        for (idx, point) in self.enumerated() {
            let key = String(describing: point.position)
            if let collision = map[key] {
                result.insert(collision)
                result.insert(idx)
            } else {
                map[key] = idx
            }
        }
        return [Int](result).sorted(by: >)
    }
}

extension String {
    public func toPoints() -> [Point] {
        return String(self.filter { Array("0123456789-,\n").contains($0) })
            .split(separator: "\n")
            .map {
                $0.split(separator: ",").map { Int($0)! }
            }
            .map {
                a in
                Point(position: (x: a[0], y: a[1], z: a[2]),
                      velocity: (x: a[3], y: a[4], z: a[5]),
                      acceleration: (x: a[6], y: a[7], z: a[8]))
        }
    }
}
