import UIKit

let firstArray = [9, 3, 0, -5, 2, 3, 4, 3]
let secondArray = [1, 7, -2, 2, 12, -29]

let sortedFirstArray = firstArray.sorted(by: <)
print("Соритровка по возрастанию: \(sortedFirstArray)")

let sortedSecondArray = secondArray.sorted(by: >)
print("Соритровка по убыванию: \(sortedSecondArray)")
