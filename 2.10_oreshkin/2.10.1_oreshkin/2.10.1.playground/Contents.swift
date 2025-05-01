import UIKit

struct Container {
	var value: Int
}

let containers = [
	Container(value: 2),
	Container(value: 4),
	Container(value: 24),
	Container(value: -1),
	Container(value: 9),
	Container(value: 0),
	Container(value: 7)
]

// 4.1
containers.forEach { print($0.value)}


// 4.2
let firstValue = containers.first { $0.value % 2 == 0 }
print(firstValue?.value ?? 0)


// 4.3
let lastGreaterThan10 = containers.last { $0.value > 10 }
print(lastGreaterThan10?.value ?? 0)


// 4.4
let firstEvenIndex = containers.firstIndex { $0.value % 2 == 0 }
print(firstEvenIndex ?? 0)

let lastGreaterThan10Index = containers.lastIndex { $0.value > 10 }
print(lastGreaterThan10Index ?? 0)


// 4.5
let hasElementGreaterThan100 = containers.contains { $0.value > 100 }
print(hasElementGreaterThan100)


// 4.6
let minContainer = containers.min { $0.value < $1.value }
print(minContainer?.value ?? 0)

let maxContainer = containers.max { $0.value < $1.value }
print(maxContainer?.value ?? 0)


// 4.7
let ascending = containers.sorted { $0.value < $1.value }
print(ascending.map { $0.value })

let descending = containers.sorted { $0.value > $1.value }
print(descending.map { $0.value })


// 4.8
let evenContainers = containers.filter { $0.value % 2 == 0 }
print(evenContainers.map { $0.value })


// 4.9


// 4.10


// 4.11


// 4.12
let totalSum = containers.reduce(0) { $0 + $1.value }
print(totalSum)
