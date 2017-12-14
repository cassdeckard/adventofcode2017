import Foundation

public class KnotHash {
    private let dense: [Int]
    
    private static func process(_ input: [Int], listLength: Int = 256) -> [Int] {
        var list = (0..<listLength).map{ $0 }
        
        var unshift = 0
        var skip = 0
        for _ in 1...64 {
            for length in input {
                let subSequence = list[..<length]
                list = subSequence.reversed() + list[length...]
                let shift = (length + skip) % list.count
                unshift += shift
                list = list[shift...].map { $0 } + list[..<shift]
                skip += 1
            }
        }
        
        unshift = list.count - (unshift % list.count)
        
        list = list[unshift...].map { $0 } + list[..<unshift]
        
        return list
    }
    
    public init(_ input: String) {
        let inputList = input.unicodeScalars.map { Int(UInt8(ascii: $0)) } + [17, 31, 73, 47, 23]
        
        let sparse = KnotHash.process(inputList)
        var dense = [Int]()
        for i in stride(from: 0, to: 256, by: 16) {
            dense.append(sparse[i..<i+16].reduce(0, ^))
        }
        self.dense = dense
    }
    
    public var toHex : String {
        return dense.reduce("") {
            acc, next in acc + String(format: "%02hhx", next)
        }
    }
}

extension KnotHash : CustomStringConvertible {
    public var description : String {
        return self.toHex
    }
}
