import UIKit

class UserClass {
	var name: String
	
	init(name: String) {
		self.name = name
	}
}

struct UserStruct {
	var name: String
}

var classUser1 = UserClass(name: "Диана")
var structUser1 = UserStruct(name: "Диана")

var classUser2 = classUser1
var structUser2 = structUser1

classUser2.name = "Полина"
structUser2.name = "Полина"

print("\(classUser1.name)")
print("\(structUser1.name)")
