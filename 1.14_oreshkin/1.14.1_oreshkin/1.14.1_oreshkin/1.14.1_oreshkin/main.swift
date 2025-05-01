//
//  main.swift
//  1.14.1_oreshkin
//
//  Created by Александр Орешкин on 05.06.2025.
//

import Foundation

// enum с операциями
enum Operation: String {
	case addition = "+"
	case subtraction = "-"
	case multiplication = "*"
	case division = "/"
}

// enum c ошибками
enum ErrorType: Error {
	case invalidInput
	case invalidOperation
	case divisionByZero
}

// func запрос первого числа
func getNumberFirstFromUser() throws -> Int {
	print("Введите первое число")
	guard let inputString = readLine(), let numberFirst = Int(inputString) else {
		throw ErrorType.invalidInput
	}
	return numberFirst
}

// func запрос второго числа
func getNumberSecondFromUser() throws -> Int {
	print("Введите второе число")
	guard let inputString = readLine(), let numberSecond = Int(inputString) else {
		throw ErrorType.invalidInput
	}
	return numberSecond
}

// func запрос операции
func getOperationFromUser() throws -> Operation {
	print("Введите одну из операций (+, -, *, /):")
	guard let input = readLine() else {
		throw ErrorType.invalidOperation
	}
	
	guard let operation = Operation(rawValue: readLine() ?? "") else {
	throw ErrorType.invalidOperation
	}
	return operation
}

// func операции над числами
func calculate(_ number1: Int, _ number2: Int, operation: Operation) throws -> Int {
	switch operation {
	case .addition:
		return number1 + number2
	case .subtraction:
		return number1 - number2
	case .multiplication:
		return number1 * number2
	case .division:
		guard number2 != 0 else {
			throw ErrorType.divisionByZero
		}
		return number1 / number2
	}
}

//func вывод результата
func runCalculator() {
	var shouldContinue = true
	while shouldContinue {
		do {
			let number1 = try getNumberFirstFromUser()
			let operation = try getOperationFromUser()
			let number2 = try getNumberSecondFromUser()
			
			let result = try calculate(number1, number2, operation: operation)
			print("Результат: \(number1) \(operation.rawValue) \(number2) = \(result)")
			
		} catch ErrorType.invalidInput {
			print("Ошибка: Неверный формат числа. Попробуйте еще раз.")
			continue
		} catch ErrorType.divisionByZero {
			print("Ошибка: Деление на ноль невозможно.")
			continue
		} catch ErrorType.invalidOperation {
			print("Ошибка: Неподдерживаемая операция. Попробуйте еще раз.")
		} catch {
			print("Неизвестная ошибка: \(error)")
		}
		
		print("Хотите продолжить? Y/N")
		shouldContinue = readLine()?.uppercased() == "Y"
	}
}

runCalculator()
