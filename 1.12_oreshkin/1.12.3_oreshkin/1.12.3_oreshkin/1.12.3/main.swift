//
//  main.swift
//  1.12.3
//
//  Created by Александр Орешкин on 01.06.2025.
//

import Foundation

func findMinMax(numbers: [Int]) -> (min: Int, max: Int)? {
	guard !numbers.isEmpty else {
		return nil
	}
	
	var min = numbers[0]
	var max = numbers[0]
	
	for number in numbers {
		if number < min {
			min = number
		}
		if number > max {
			max = number
		}
	}
	return (min, max)
}

print("Введите числа через запятую")
guard let input = readLine() else {
	print("Ошибка ввода")
	exit(0)
}
var numbersArray: [Int] = []
for element in input.components(separatedBy: ",") {
	if let num = Int(element) {
		numbersArray.append(num)
	}
}
guard !numbersArray.isEmpty else {
	print("Не нашли ни одного числа в вашем вводе")
	exit(0)
}
if let result = findMinMax(numbers: numbersArray) {
	print("Минимальное значение \(result.min) \nМаксимальное значение \(result.max)")
} else {
	print("Не удалось найти минимум и максимум (массив пустой)")
}
