//: Playground - noun: a place where people can play

import Foundation

let example = """
0: 3
1: 2
4: 4
6: 4
"""

let input = """
0: 3
1: 2
2: 6
4: 4
6: 4
8: 8
10: 6
12: 8
14: 5
16: 6
18: 8
20: 8
22: 12
24: 6
26: 9
28: 8
30: 12
32: 12
34: 17
36: 12
38: 8
40: 12
42: 12
44: 10
46: 12
48: 12
50: 12
52: 14
54: 14
56: 10
58: 14
60: 12
62: 14
64: 14
66: 14
68: 14
70: 14
72: 14
74: 14
76: 14
86: 14
94: 20
96: 18
"""

func didHit(layer: Int, range: Int) -> Bool {
    return layer % ((range - 1) * 2) == 0
}

func severity(layer: Int, range: Int) -> Int {
    return didHit(layer: layer, range: range) ? layer * range : 0
}

let part1 = input
    .replacingOccurrences(of: " ", with: "")
    .split(separator: "\n")
    .map {
        $0.split(separator: ":").map { Int($0)! }
    }
    .map {
        severity(layer: $0[0], range: $0[1])
    }
    .reduce(0, +)

print(part1)
