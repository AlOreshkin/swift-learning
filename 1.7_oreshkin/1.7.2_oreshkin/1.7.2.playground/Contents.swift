import UIKit

var array: [Int] = [10, 7, 42, 13, 11]

if !array.isEmpty {
	array[0] += array.count
	print("Массив с новым первым элементом: \(array)")
} else {
	print("Массив пустой")
}

var product: Int?

for number in array {
	if let element = product {
		product = element * number
	} else {
		product = number
	}
}
array.append(product ?? 0) // так можно?

print(array)
