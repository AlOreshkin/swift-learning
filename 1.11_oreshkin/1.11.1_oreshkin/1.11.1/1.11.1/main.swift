//
//  main.swift
//  1.11.1
//
//  Created by Александр Орешкин on 24.05.2025.
//

import Foundation

print("Введите количество значений:")
guard let input = readLine(), let number = Int(input) else {
	print("Ошибка: это не число")
	exit(0)
}

print("Введите \(number) значений:")
guard let valuesInput = readLine() else {
	print("Ошибка: не удалось прочитать значения")
	exit(0)
}

let values = valuesInput.components(separatedBy: " ")
guard values.count == number else {
	print("Ошибка: число значений \(valuesInput) не совпадает с количеством \(number)")
	exit(0)
}

let reversedValues = values.reversed()
let result = reversedValues.joined(separator: " ")

print(result)
