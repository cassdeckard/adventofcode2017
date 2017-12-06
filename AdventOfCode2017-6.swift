#!/usr/bin/swift

import Foundation

let example = [0, 2, 7, 0]
let input = [2, 8, 8, 5, 4, 2, 3, 1, 5, 5, 1, 2, 15, 13, 5, 14]
var records = Set<String>()

extension Array where Element == Int {
    func stringify() -> String {
        return "\(self)"
    }
}

func isUnique(_ input: [Int]) -> Bool {
    let numRecords = records.count
    records = records.union([input.stringify()])
    return records.count == numRecords + 1
}

func process(_ input: [Int]) {
    records = Set<String>()
    var step = 0
    var banks = input
    var numBanks = banks.count
    print("numBanks: \(numBanks)")

    while (isUnique(banks)) {
        step += 1
        print(banks.stringify())
        var toDistribute = banks.max()!

        let target = banks.enumerated().first { (_, x) in x == toDistribute }!
        print("target: \(target)")
        var offset = target.offset
        banks[offset] = 0

        if toDistribute / numBanks == 0 {
            while toDistribute > 0 {
                offset += 1
                if offset == numBanks { offset = 0 }
                banks[offset] += 1
                toDistribute -= 1
            }
        } else if toDistribute % numBanks == 0 {
            let evenDist = toDistribute / numBanks
            print("evenDist: \(evenDist)")
            banks = banks.map { $0 + evenDist }
        } else {
            let oddDist = toDistribute / (numBanks - 1)
            print("oddDist: \(oddDist)")
            banks = banks.map { $0 + oddDist }
            banks[offset] = toDistribute % (numBanks - 1)
        }
    }
    print(banks.stringify())
    print(step)
}

process(example)
process(input)
