let input = "230,1,2,221,97,252,168,169,57,99,0,254,181,255,235,167"

func process(_ input: [Int], listLength: Int = 256) -> [Int] {
	var list = (0..<listLength).map{ $0 }
// 	print(list)

	var unshift = 0
	var skip = 0
	for i in 1...64 {
		print(i)
		for length in input {
			print("length: \(length)  skip: \(skip)")
			let subSequence = list[..<length]
			list = subSequence.reversed() + list[length...]
			let shift = (length + skip) % list.count
			unshift += shift
			list = list[shift...].map { $0 } + list[..<shift]
			skip += 1
		}
	}

	unshift = list.count - (unshift % list.count)
// 	print(unshift)

	list = list[unshift...].map { $0 } + list[..<unshift]

// 	print(list)
	return list
}

let sparse = process([17, 31, 73, 47, 23])
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
print(denseStr)
