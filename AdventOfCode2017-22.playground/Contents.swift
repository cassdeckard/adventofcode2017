//: Playground - noun: a place where people can play

import Foundation

let example = """
..#
#..
...
"""

var map = example.asMap

//map["(x: -7, y: -5)"] = (x: -7, y: -5)
print(map.grid)
