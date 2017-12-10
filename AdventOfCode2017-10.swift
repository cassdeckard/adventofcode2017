let example = [3, 4, 1, 5]
let input = [230,1,2,221,97,252,168,169,57,99,0,254,181,255,235,167]

func process(_ input: [Int], listLength: Int = 256) -> [Int] {
	var list = (0..<listLength).map{ $0 }
	print(list)

	var unshift = 0
	for (skip, length) in input.enumerated() {
		print("length: \(length)  skip: \(skip)")
		let subSequence = list[..<length]
		list = subSequence.reversed() + list[length...]
		let shift = (length + skip) % list.count
		unshift += shift
		list = list[shift...].map { $0 } + list[..<shift]
		print(list)
	}

	unshift = list.count - (unshift % list.count)
	print(unshift)

	list = list[unshift...].map { $0 } + list[..<unshift]

	print(list)
	return list
}

print(process(example, listLength: 5))
print("###")
let result = process(input)
print(result[0] * result[1])
