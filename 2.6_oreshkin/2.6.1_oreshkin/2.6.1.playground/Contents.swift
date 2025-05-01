import UIKit

extension String {
	func isEqualCaseInsensitive(with otherString: String) -> Bool {
		let selfLowercased = self.lowercased()
		let otherLowercased = otherString.lowercased()
		return selfLowercased == otherLowercased
	}
}

let example1 = "Hello".isEqualCaseInsensitive(with: "hellO")
print(example1)

let example2 = "W".isEqualCaseInsensitive(with: "v")
print(example2)
