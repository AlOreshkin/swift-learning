import UIKit

var characterQuote = ["Скорпион": "Иди сюда!", "Геральт": "Шевелись плотва"]
characterQuote["Тархиэль"] = "ААААААААААААХХРХХХХХХХХХХХХ"

for (character, quote) in characterQuote.sorted(by: <) {
	print("\(character): \(quote)")
}

