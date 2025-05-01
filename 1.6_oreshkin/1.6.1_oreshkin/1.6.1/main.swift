//
//  main.swift
//  1.6.1
//
//  Created by Александр Орешкин on 10.05.2025.
//

import Foundation


print("Пожалуйста, введите исходный текст:")
guard let originalText = readLine(), !originalText.isEmpty else {
	print("Ошибка: исходный текст не может быть пустым!")
	exit(0)
}

print("Введите текст, который нужно заменить:")
guard let textToReplace = readLine(), !textToReplace.isEmpty else {
	print("Ошибка: текст для замены не может быть пустым!")
	exit(0)
}

print("Введите текст, на который нужно заменить:")
guard let newText = readLine() else {
	print("Ошибка ввода!")
	exit(0)
}

let resultText = originalText.replacingOccurrences(of: textToReplace, with: newText)

print("Исходный текст: \(originalText)")
print("Заменили: \(textToReplace) на \(newText)")
print("Результат: \(resultText)")
