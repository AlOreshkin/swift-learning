import UIKit

protocol Shape {
	func area() -> Double
	func name() -> String
}

struct Rectangle: Shape {
	let width: Double
	let height: Double
	
	func area() -> Double {
		return width * height
	}
	
	func name() -> String {
		return "Прямоугольник"
	}
}

struct Circle: Shape {
	let radius: Double
	
	func area() -> Double {
		return Double.pi * pow(radius, 2)
	}
	
	func name() -> String {
		return "круг"
	}
}

struct Trapezoid: Shape {
	let base1: Double
	let base2: Double
	let height: Double
	
	func area() -> Double {
		return 0.5 * (base1 + base2) * height
	}
	
	func name() -> String {
		return "трапеция"
	}
}

func printShapeInfo(_ shape: Shape) {
	print("Это \(shape.name()), площадь \(shape.area())")
}

let shapes: [Shape] = [
	Rectangle(width: 100, height: 70),
	Circle(radius: 60),
	Trapezoid(base1: 20, base2: 50, height: 50)
]

for shape in shapes {
	printShapeInfo(shape)
}
