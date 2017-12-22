//: Playground - noun: a place where people can play

import Foundation

let example = """
..#
#..
...
"""

var map = example.asMap
var virus = Virus()

for _ in 1...70 {
    virus.act(on: &map)
}
print(map.grid)
