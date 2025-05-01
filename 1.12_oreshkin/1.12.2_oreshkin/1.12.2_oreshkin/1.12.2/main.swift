//
//  main.swift
//  1.12.2
//
//  Created by Александр Орешкин on 01.06.2025.
//

import Foundation

func isPalindrome(text: String) -> Bool {
	let lowerCasedText = text.lowercased()
	let letters = Array(lowerCasedText)
	
	var leftIndex = 0
	var rightIndex = letters.count - 1
	
	while leftIndex < rightIndex {
		if letters[leftIndex] != letters[rightIndex] {
			return false
		}
		leftIndex += 1
		rightIndex -= 1
	}
	return true
}

print("Введите слово или фразу для проверки на палиндром:")
while true {
	guard let inputText = readLine(), !inputText.isEmpty else {
		print("Ничего не ввели, попробуйте снова")
		continue
	}
	
	if isPalindrome(text: inputText) {
		print("'\(inputText)' - палиндром")
	} else {
		print("'\(inputText)' - это не палиндром")
	}
}
