//
//  main.swift
//  1.11.2
//
//  Created by Александр Орешкин on 25.05.2025.
//

import Foundation

var shouldContinue = true

while shouldContinue {
	
	var number1: Int
	while true {
		print("Введите первое число:")
		guard let input = readLine(), let num = Int(input) else {
			print("Неверный формат числа. Попробуйте еще раз.")
			continue
		}
		number1 = num
		break
	}
	
	var number2: Int
	while true {
		print("Введите второе число:")
		guard let input = readLine(), let num = Int(input) else {
			print("Неверный формат числа. Попробуйте еще раз.")
			continue
		}
		number2 = num
		break
	}
	
	var operation: String
	while true {
		print("Введите одну из операций (+, -, *, /):")
		guard let input = readLine() else {
			print("Ошибка ввода. Попробуйте еще раз.")
			continue
		}
		guard ["+", "-", "*", "/"].contains(input) else {
			print("Неподдерживаемая операция. Попробуйте еще раз.")
			continue
		}
		operation = input
		break
	}
	
	switch operation {
	case "+":
		print("Результат: \(number1 + number2)")
	case "-":
		print("Результат: \(number1 - number2)")
	case "*":
		print("Результат: \(number1 * number2)")
	case "/":
		guard number2 != 0 else {
			print("Деление на ноль невозможно. Начните заново.")
			continue
		}
		print("Результат: \(number1 / number2)")
	default:
		break
	}
	
	print("Хотите продолжить? Y/N")
	shouldContinue = readLine()?.uppercased() == "Y"
}
