//
//  main.swift
//  12.1
//
//  Created by Александр Орешкин on 25.05.2025.
//

import Foundation

//  Функция для запроса пароля
func askForPasswordLength() -> Int? {
	print("Введите длину пароля (минимум 4 символа):")
	
	guard let input = readLine(), let passwordLength = Int(input), passwordLength >= 4 else {
		print("Ошибка: нужно ввести число ≥ 4. Введите 'заново' для повтора или любой другой текст для выхода")
		
		guard readLine()?.lowercased() == "заново" else {
			return nil
		}
		return askForPasswordLength()
		
	}
	return passwordLength
}

// Функция для создания пароля
func generatePassword(length: Int) -> String {
	let lowerCaseLetters = Array("abcdefghijklmnopqrstuvwxyz")
	let upperCaseLetters = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
	let digits = Array("0123456789")
	let specialChars = Array("@#$%^&*")
	
	var password = ""
	
	if let randomLower = lowerCaseLetters.randomElement(),
	   let randomUpper = upperCaseLetters.randomElement(),
	   let randomDigit = digits.randomElement(),
	   let randomSpecial = specialChars.randomElement() {
		password.append(randomLower)
		password.append(randomUpper)
		password.append(randomDigit)
		password.append(randomSpecial)
	}
	
	let allSymbol = lowerCaseLetters + upperCaseLetters + digits + specialChars
	
	while password.count < length {
		if let randomSymbol = allSymbol.randomElement() {
			password.append(randomSymbol)
		}
	}
	return String(password.shuffled())
}
//Выдаем пароль
func runPasswordGenerator() {
	guard let passwordLength = askForPasswordLength() else {
		print("Программа завершена.")
		exit(0)
	}
	
	let newPassword = generatePassword(length: passwordLength)
	print("Ваш новый пароль: \(newPassword)")
	
}

runPasswordGenerator()

