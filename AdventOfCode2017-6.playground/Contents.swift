//: Playground - noun: a place where people can play

import Foundation

let example = [0, 2, 7, 0]
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
    var step = 0
    var banks = input
    var numBanks = banks.count
    
    while (isUnique(banks)) {
        step += 1
        print(banks.stringify())
        let toDistribute = banks.max()!

        let target = banks.enumerated().first { (_, x) in x == toDistribute }!
        banks[target.offset] = 0
        
        if toDistribute % numBanks == 0 {
            banks = banks.map { $0 + (toDistribute / numBanks ) }
        } else {
            banks = banks.map { $0 + (toDistribute / (numBanks - 1)) }
            banks[target.offset] = toDistribute % (numBanks - 1)
        }
    }
    print(step)
}

process(example)
