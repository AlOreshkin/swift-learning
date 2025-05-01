import UIKit

extension Bool {
	var stringValue: String {
		return self ? "Истина" : "Ложь"
	}
}

print(true.stringValue)
print(false.stringValue)
