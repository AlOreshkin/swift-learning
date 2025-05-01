import UIKit

struct Button {
	private var text: String
	private var width: Double
	private var height: Double
	private var action: () -> Void
	
	init(text: String, width: Double, height: Double, action: @escaping () -> Void) {
		 self.text = text
		 self.width = width
		 self.height = height
		 self.action = action
	 }
	
	func press() {
			print("Была нажата кнопка \"\(text)\"")
			action()
		}
	
	var size: Size {
		return Size(widht: width, height: height)
	}
}

struct Size {
	var widht: Double
	var height: Double
}

let myButton = Button(text: "Нажми меня", width: 100.0, height: 50.0, action: { print("Button pressed!") })

myButton.press()
