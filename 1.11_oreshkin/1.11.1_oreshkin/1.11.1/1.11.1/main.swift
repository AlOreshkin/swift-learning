//
//  main.swift
//  1.11.1
//
//  Created by Александр Орешкин on 24.05.2025.
//

import Foundation

print("Введите количество значений:")
guard let countInput = readLine(), let count = Int(countInput) else {
	print("Ошибка: это не число")
	exit(0)
}

var values: [String] = []

for _ in 1...count {
	print("Введите значения:")
	guard let valueInput = readLine() else {
		print("Ошибка: не удалось прочитать значение")
		exit(0)
	}
	values.append(valueInput)
}


let reversedValues = values.reversed()

print("Результат:")
for value in reversedValues {
	print(value)
}
