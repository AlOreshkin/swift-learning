import UIKit

let dates: [String] = ["29.04.2021", "30.04.2021", "02.05.2021", "30.04.2021"]
let steps: [Int] = [9381, 4618, 12373, 3338]

var resultDict = [String: Int]()

for i in 0..<dates.count {
	let date = dates[i]
	// Берем шаги, если они есть, иначе 0
	let step = i < steps.count ? steps[i] : 0
	
	// Суммируем шаги для каждой даты
	if let existingSteps = resultDict[date] {
		resultDict[date] = existingSteps + step
	} else {
		resultDict[date] = step
	}
}

// Преобразуем словарь в массив кортежей
var resultArray = [(date: String, steps: Int)]()
for (date, totalSteps) in resultDict {
	resultArray.append((date: date, steps: totalSteps))
}

print("[")
for couple in resultArray {
	print("(date: \"\(couple.date)\", steps: \(couple.steps)),")
}
print("]")
