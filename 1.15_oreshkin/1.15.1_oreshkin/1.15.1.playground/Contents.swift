import UIKit

func filtering(numbers: [Int],closure: (Int) -> Bool) -> [Int] {
	var filteredNumbers: [Int] = []
	for number in numbers {
		if closure(number) {
			filteredNumbers.append(number)
		}
	}
	return filteredNumbers
}

let testArrayNumbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -1 ,-2, -3, -4]
let filterArray = filtering(numbers: testArrayNumbers) { $0 % 2 == 0 }

print("Четные числа: \(filterArray)")
