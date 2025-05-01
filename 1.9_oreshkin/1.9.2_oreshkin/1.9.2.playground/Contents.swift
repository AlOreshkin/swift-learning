import UIKit

var theFirstUsers: [String: Int?] = [
	"Alex": 100,
	"Bob": nil,
	"Charlie": 150,
	"Nick": 230
]
	
var theSecondUsers: [String: Int?] = [
	"Anna": 150,
	"Martin": nil,
	"Alex": 220,
	"Bob": 110
]

let uniqueKeys = Set(theFirstUsers.keys).union(theSecondUsers.keys)

var users: [String: Int?] = [:]

for key in uniqueKeys {
	let firstValue = theFirstUsers[key] ?? nil
	let secondValue = theSecondUsers[key] ?? nil
	
	if let first = firstValue, let second = secondValue {
		users[key] = first + second // сумма значений для одного и того же ключа
	} else if let first = firstValue {
		users[key] = first
	} else if let second = secondValue {
		users[key] = second
	} else {
		users[key] = nil
	}
}

print(users)

