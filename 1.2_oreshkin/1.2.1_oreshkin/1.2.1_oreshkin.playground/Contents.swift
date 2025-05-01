import UIKit

let weight = 75
let height = 175
let dist = 9.75
let hours = 2
let speed = dist / Double(hours)

let numberOne = Double(weight) * 0.035
let numberTwo = speed * speed / Double(height)
let numberThree = Double(weight) * 0.029

let totalCalories = ((numberOne + numberTwo * numberThree) * 120.0).rounded()
