//: Playground - noun: a place where people can play

import Foundation

typealias Registers = [String : Int]

var example = """
p=< 3,0,0>, v=< 2,0,0>, a=<-1,0,0>
p=< 4,0,0>, v=< 0,0,0>, a=<-2,0,0>
"""

let input = """
"""

typealias Vector = (x: Int, y: Int, z: Int)

struct Point {
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

func +(lhs: Vector, rhs: Vector) -> Vector {
    return (x: lhs.x + rhs.x, y: lhs.y + rhs.y, z: lhs.z + rhs.z)
}

extension Point : CustomStringConvertible {
    var description: String {
        return "<p=\(position) v=\(velocity) a=\(acceleration) d=\(distance)>"
    }
}

extension Array where Element == Point {
    var description : String {
        return self.reduce("[\n") { $0 + "    \($1)\n" } + "]"
    }
    
    func step() -> [Element] {
        return self.map { $0.step() }
    }
}

example = String(example.filter { Array("0123456789-,\n").contains($0) })

var points = example
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

print(points.description)
for i in 0...2 {
    print(" > STEP \(i)")
    points = points.step()
    print(points.description)
}
