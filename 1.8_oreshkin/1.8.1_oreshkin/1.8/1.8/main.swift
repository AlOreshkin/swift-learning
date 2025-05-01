//
//  main.swift
//  1.8
//
//  Created by Александр Орешкин on 14.05.2025.
//

import Foundation

var colorsSet = Set<String>()

print("Введите hex-код цвета через запятую:")
let input = readLine() ?? ""
guard !input.isEmpty else {
	print("Результат:\nСписок пуст, вы не ввели ни одного валидного цвета")
	exit(0)
}

let colors = input.components(separatedBy: ",")
for color in colors {
	let colorDontWhiteSpace = color.trimmingCharacters(in: .whitespaces)
	let colorDontHash = colorDontWhiteSpace.replacingOccurrences(of: "#", with: "")
	guard colorDontHash.count == 6 else { continue } // или здесь можно/достаточно использовать if
	
	colorsSet.insert(colorDontHash.lowercased())
}

print("Результат:\n\(colorsSet.sorted())")

