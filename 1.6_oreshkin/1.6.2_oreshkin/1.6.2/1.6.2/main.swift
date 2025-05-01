//
//  main.swift
//  1.6.2
//
//  Created by Александр Орешкин on 11.05.2025.
//

import Foundation

print("Введите первое число:")
guard let firstNumber = readLine(), let number1 = Int(firstNumber) else {
	print("Неверный формат ввода")
	exit(0)
}

print("Введите второе число:")
guard let secondNumber = readLine(), let number2 = Int(secondNumber) else {
	print("Неверный формат ввода")
	exit(0)
}

print("Введите одну из операций над этими числами (+, -, *, /):")
guard let operation = readLine() else {
	print("Ошибка, введите операцию")
	exit(0)
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
		exit(0)
	}
	print("Результат: \(number1 / number2)")
	
default:
	print("Введеная операция не поддерживается")
}
