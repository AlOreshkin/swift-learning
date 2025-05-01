import UIKit

enum Grade: String {
	case junior
	case middle
	case senior
}

enum Developer {
	case ios(grade: Grade)
	case android(grade: Grade)
	
	func description() -> String {
		switch self {
		case .ios(grade: let grade):
			return "🍏 \(grade.rawValue) iOS developer"
		case .android(grade: let grade):
			return "🤖 \(grade.rawValue) Android developer"
		}
	}
}

let developers: [Developer] = [
	.ios(grade: .junior),
	.android(grade: .senior)
]

for developer in developers {
	print(developer.description())
}

