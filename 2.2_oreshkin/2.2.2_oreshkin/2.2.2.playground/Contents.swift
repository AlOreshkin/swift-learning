import UIKit

let user: [String: Double] = [
	"weight": 75.7,
	"height": 175.3
]

let dates = ["28.01.2020", "29.01.2020", "30.01.2020", "29.01.2020"]
let steps = [
	["steps": 1246, "minutes": 34],
	["steps": 3378, "minutes": 126],
	["steps": 9937, "minutes": 98],
	["steps": 3361, "minutes": 24],
	["steps": 12456, "minutes": 136]
]

struct FitnessDay {
	let date: String
	let steps: Int
	let minutes: Int
	
	func getCalories(weight: Double, height: Double) -> Int {
		let speed = getSpeed()
		let term1 = 0.035 * weight
		let term2a = (speed * speed) / height
		let term2b = 0.029 * weight
		let caloriesPerMinute = term1 + (term2a * term2b)
		let totalCalories = caloriesPerMinute * Double(minutes)
		return Int(totalCalories.rounded())
	}
	
	func getSpeed() -> Double {
		guard minutes > 0 else { return 0.0 }
		let distanceInKm = Double(steps) * 0.762 / 1000.0
		let hours = Double(minutes) / 60.0
		let speed = distanceInKm / hours
		return (speed * 10).rounded() / 10
	}
}

let userWeight = user["weight"] ?? 0.0
let userHeight = user["height"] ?? 0.0

var resultDict = [String: (steps: Int, minutes: Int)]()

for i in 0..<dates.count {
	let date = dates[i]
	var step = 0
	var minute = 0
	
	if i < steps.count {
		step = steps[i]["steps"] ?? 0
		minute = steps[i]["minutes"] ?? 0
	}
	
	if let existingData = resultDict[date] {
		resultDict[date] = (existingData.steps + step, existingData.minutes + minute)
	} else {
		resultDict[date] = (step, minute)
	}
}

var resultArray = [FitnessDay]()
for (date, data) in resultDict {
	resultArray.append(FitnessDay(date: date, steps: data.steps, minutes: data.minutes))
}

for day in resultArray {
	let calories = day.getCalories(weight: userWeight, height: userHeight)
	let speed = day.getSpeed()
	print("Дата: \(day.date), шаги: \(day.steps), калории: \(calories), скорость: \(speed) км/ч")
}
