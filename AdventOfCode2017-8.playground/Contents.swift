//: Playground - noun: a place where people can play

import Foundation

typealias Registers = [String : Int]

let example = """
b inc 5 if a > 1
a inc 1 if b < 5
c dec -10 if a >= 1
c inc -20 if c == 10
"""

struct Instruction {
    let register: String
    let amount: Int
    let condition: Condition
    
    func execute(onRegisters registers: inout Registers) {
        if condition.evaluate(onRegisters: &registers) {
            registers[register] = (registers[register] ?? 0) + amount
        }
    }
}

enum Condition {
    case greaterThan(register: String, value: Int)
    case lessThan(register: String, value: Int)
    case greaterThanOrEqual(register: String, value: Int)
    case lessThanOrEqual(register: String, value: Int)
    case equal(register: String, value: Int)
    case notEqual(register: String, value: Int)
    case invalid
    
    static func create(register: String, comparator: String, value: Int) -> Condition {
        switch comparator {
        case ">":
            return .greaterThan(register: register, value: value)
        case "<":
            return .lessThan(register: register, value: value)
        case ">=":
            return .greaterThanOrEqual(register: register, value: value)
        case "<=":
            return .lessThanOrEqual(register: register, value: value)
        case "==":
            return .equal(register: register, value: value)
        case "!=":
            return .notEqual(register: register, value: value)
        default:
            return .invalid
        }
    }
    
    func evaluate(onRegisters registers: inout Registers) -> Bool {
        switch self {
        case let .greaterThan(register, value):
            return (registers[register] ?? 0) > value
        case let .lessThan(register, value):
            return (registers[register] ?? 0) < value
        case let .greaterThanOrEqual(register, value):
            return (registers[register] ?? 0) >= value
        case let .lessThanOrEqual(register, value):
            return (registers[register] ?? 0) <= value
        case let .equal(register, value):
            return (registers[register] ?? 0) == value
        case let .notEqual(register, value):
            return (registers[register] ?? 0) != value
        case .invalid:
            return false
        }
    }
}

extension Instruction: CustomStringConvertible {
    var description: String {
        return "Instruction('\(register)' \(amount) if \(condition))"
    }
}

extension Condition: CustomStringConvertible {
    var description: String {
        switch self {
        case let .greaterThan(register, value):
            return "greaterThan('\(register)', \(value))"
        case let .lessThan(register, value):
            return "lessThan('\(register)', \(value))"
        case let .greaterThanOrEqual(register, value):
            return "greaterThanOrEqual('\(register)', \(value))"
        case let .lessThanOrEqual(register, value):
            return "lessThanOrEqual('\(register)', \(value))"
        case let .equal(register, value):
            return "equal('\(register)', \(value))"
        case let .notEqual(register, value):
            return "notEqual('\(register)', \(value))"
        case .invalid:
            return "INVALID COMPARISON"
        }
    }
}

func compile(instruction: String) -> Instruction {
    let instrCond = instruction.replacingOccurrences(of: " if ", with: ";").split(separator: ";")
    let instrElements = instrCond[0].split(separator: " ")
    let condElements = instrCond[1].split(separator: " ")
    
    let instrAmount = Int(instrElements[2])! * (instrElements[1] == "dec" ? -1 : 1)
    
    let condition = Condition.create(register: String(condElements[0]), comparator: String(condElements[1]), value: Int(condElements[2])!)
    
    return Instruction(register: String(instrElements[0]), amount:instrAmount, condition: condition)
}

func compile(instructions: String) -> [Instruction] {
    return instructions
        .split(separator: "\n")
        .map { compile(instruction: String($0)) }
}

func process(input: String) {
    var registers = Registers()
    compile(instructions: input).forEach {
        print($0)
        $0.execute(onRegisters: &registers)
    }
    
    print(registers)
    print(registers.max { a, b in a.value < b.value }?.value ?? 0)
}

compile(instruction: "b dec -5 if a <= -1")

process(input: example)
