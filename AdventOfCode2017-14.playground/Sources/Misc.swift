import UIKit

public func getSquares(_ input: String) -> [UInt8] {
    return (0..<128).flatMap { KnotHash("\(input)-\($0)").dense.bin.map{ UInt8(String($0))! } }
}

public func floodFill(_ input: inout [UInt8], target: (x: Int, y: Int) = (x: 0, y: 0)) -> Int {
    let (x, y) = target
    let index = y * 128 + x
    guard input.indices.contains(index), input[index] == 1 else { return 0 }
    
    var numChanged = 1
    input[index] = 0
    for newTarget in [(x: x - 1, y: y), (x: x + 1, y: y), (x: x, y: y - 1), (x: x, y: y + 1)] {
        numChanged += floodFill(&input, target: newTarget)
    }
    return numChanged
}

public func findNextTarget(_ input: [UInt8]) -> (x: Int, y: Int)? {
    guard let offsetElem = (input.enumerated().first { $0.element == 1 }) else { return nil }
    let (idx, _) = offsetElem
    return (x: idx % 128, y: idx / 128)
}

public func fillAll(_ squares: inout [UInt8]) -> [Int] {
    var result = [Int]()
    while let nextTarget = findNextTarget(squares) {
        let numFilled = floodFill(&squares, target: nextTarget)
        result.append(numFilled)
    }
    return result
}

public func numSquares(_ squares: [UInt8]) -> Int {
    return squares.filter { $0 == 1 }.count
}

public func squaresAsImage(_ squares: [UInt8]) -> UIImage {
    let pixels = squares.map { PixelData($0) }
    
    return pixels.asARGB32Bitmap(width: 128, height: 128)
        .scaled(toSize: CGSize(width: 512, height: 512))
}
