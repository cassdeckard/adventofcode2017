import Foundation


public func method1(_ input: Int) -> Int {
    return input % 0x7fffffff
}

public func method2(_ input: Int) -> Int {
    return input > 0x7fffffff ? (input + 1) & 0x7fffffff : input
}
