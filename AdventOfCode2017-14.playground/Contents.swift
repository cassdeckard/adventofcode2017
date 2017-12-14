//: Playground - noun: a place where people can play

import Foundation
import CoreGraphics

KnotHash("").dense.hex == "a2582a3a0e66e6e86e3812dcb672a272"
KnotHash("AoC 2017").dense.hex == "33efeb34ea91902bb2f59c9920caa6cd"
KnotHash("1,2,3").dense.hex == "3efbe78a8d82f29979031a4aa0b16a9d"
KnotHash("1,2,4").dense.hex == "63960835bcdc130f0b66d7ff4f6a5a8e"
KnotHash("230,1,2,221,97,252,168,169,57,99,0,254,181,255,235,167").dense.hex == "0c2f794b2eb555f7830766bf8fb65a16"


print(KnotHash("flqrgnkx-0").dense.squares.prefix(8))
print(KnotHash("flqrgnkx-1").dense.squares.prefix(8))
print(KnotHash("flqrgnkx-2").dense.squares.prefix(8))
print(KnotHash("flqrgnkx-3").dense.squares.prefix(8))
print(KnotHash("flqrgnkx-4").dense.squares.prefix(8))
print(KnotHash("flqrgnkx-5").dense.squares.prefix(8))
print(KnotHash("flqrgnkx-6").dense.squares.prefix(8))
print(KnotHash("flqrgnkx-7").dense.squares.prefix(8))


var exampleSquares = getSquares("flqrgnkx")
var realSquares = getSquares("ljoxqyyw")

//floodFill(&exampleSquares, target: (x: 0, y: 0))
//floodFill(&exampleSquares, target: (x: 0, y: 3))
//floodFill(&exampleSquares, target: (x: 0, y: 5))
//floodFill(&exampleSquares, target: (x: 3, y: 0))
//floodFill(&exampleSquares, target: (x: 4, y: 2))
//floodFill(&exampleSquares, target: (x: 5, y: 0))
//floodFill(&exampleSquares, target: (x: 6, y: 2))
//floodFill(&exampleSquares, target: (x: 7, y: 1))
//floodFill(&exampleSquares, target: (x: 7, y: 3))

let groupCounts = fillAll(&realSquares)
groupCounts.count
groupCounts.reduce(0, +)

//squaresAsImage(exampleSquares)

