//
//  main.swift
//  1.11.3
//
//  Created by Александр Орешкин on 25.05.2025.
//

import Foundation

print("Угадайте число от 1 до 100")

let secretNumber = Int.random(in: 1...100)
var isPlaying = true

while isPlaying {
	print("Введите число:")
	guard let userNumber = readLine(), let number = Int(userNumber) else {
		print("Введите ЧИСЛО!")
		continue
	}
	if number == secretNumber {
		print("Вы угадали!")
		break
	} else if number > secretNumber {
		print("Задуманное число меньше")
	} else {
		print("Задуманное число больше")
	}
	
}
