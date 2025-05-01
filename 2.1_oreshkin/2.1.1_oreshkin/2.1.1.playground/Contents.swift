import UIKit

//
// БАЗОВЫЙ КЛАСС (Наследование)
class Animal {
	// ИНКАПСУЛЯЦИЯ: скрываем свойство (доступно только внутри класса)
	private var sound: String
	
	init(sound: String) {
		self.sound = sound
	}
	
	func makeSound() {
		print(sound)
	}
}

// НАСЛЕДОВАНИЕ: Dog наследует Animal
class Dog: Animal {
	init() {
		// Вызываем инициализатор родителя
		super.init(sound: "Гав-гав!")
	}
}
class Cat: Animal {
	init() {
		super.init(sound: "Мяу!")
	}
}

// ПОЛИМОРФИЗМ: работаем с разными животными через общий тип Animal
let animals: [Animal] = [Dog(), Cat()]

for animal in animals {
	animal.makeSound()
}

//  2

class Car {
	// ИНКАПСУЛЯЦИЯ: скрываем свойство (доступно только внутри класса)
	private var model: String
	private var speed: Int
	
	init(model: String, speed: Int) {
		self.model = model
		self.speed = speed
	}
	
	func drive() {
		print("\(model) едет со скоростью \(speed) км/ч")
	}
	
	func getModel() -> String {
		  return model
	  }
}

// Наследование: SportCar наследует Car
class SportCar: Car {
	init() {
		super.init(model: "Спортивный автомобиль", speed: 200)
	}
	
	override func drive() {
		print("\(getModel()) мчится на бешеной скорости")
	}
}

class Truck: Car {
	init() {
		super.init(model: "Грузовик", speed: 80)
	}
	
	override func drive() {
		print("\(getModel()) медленно везет груз")
	}
}
// ПОЛИМОРФИЗМ: работаем с разными авто через общий тип Car
let garage: [Car] = [SportCar(), Truck(), Car(model: "Седан", speed: 120)]

for car in garage {
	car.drive()
}
