let input = "230,1,2,221,97,252,168,169,57,99,0,254,181,255,235,167"

func process(_ input: [Int], listLength: Int = 256) -> [Int] {
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

func hash(_ input: String) -> String {
	let inputList = input.unicodeScalars.map { Int(UInt8(ascii: $0)) } + [17, 31, 73, 47, 23]
	print(inputList)

	let sparse = process(inputList)
	var dense = [Int]()
	for i in stride(from: 0, to: 256, by: 16) {
		dense.append(sparse[i..<i+16].reduce(0, ^))
	}
	print(dense)

	func toHex(_ int: Int) -> String {
		let key = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f"]
		return key[(int / 16)] + key[(int % 16)]
	}

	let denseStr = dense.reduce("") {
		acc, next in acc + toHex(next)
	}
	return denseStr
}

print(hash("AoC 2017"))
print(hash("1,2,3"))
print(hash("1,2,4"))
print(hash(input))
