//
//  main.swift
//  1.11.2
//
//  Created by Александр Орешкин on 25.05.2025.
//

import Foundation

var cycle = true

while cycle {
	
	print("Введите первое число:")
	guard let firstNumber = readLine(), let number1 = Int(firstNumber) else {
		print("Неверный формат ввода")
		continue
	}
	
	print("Введите второе число:")
	guard let secondNumber = readLine(), let number2 = Int(secondNumber) else {
		print("Неверный формат ввода")
		continue
	}
	
	print("Введите одну из операций над этими числами (+, -, *, /):")
	guard let operation = readLine() else {
		print("Ошибка, введите операцию")
		continue
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
			print("Деление на ноль невозможно")
			continue
		}
		print("Результат: \(number1 / number2)")
		
	default:
		print("Введеная операция не поддерживается")
		continue
	}
	
	print("Хотите продолжить? Y/N")
	guard let answer = readLine()?.uppercased() else {
		cycle = false
		break
	}
	cycle = answer == "Y"
}
