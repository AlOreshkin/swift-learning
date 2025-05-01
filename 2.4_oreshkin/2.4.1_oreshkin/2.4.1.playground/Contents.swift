import UIKit

class Car {
	var brand: String
	var model: String
	var year: Int
	var color: String
	var mileage: Double
	
	//  Designated инициализатор - основной инициализатор класса
	init(brand: String, model: String, year: Int, color: String, mileage: Double) {
		self.brand = brand
		self.model = model
		self.year = year
		self.color = color
		self.mileage = mileage
	}
	
	// Convenience инициализатор - вызывает designated инициализатор с некоторыми значениями по умолчанию
	convenience init(brand: String, model: String, year: Int) {
		self.init(brand: brand, model: model, year: year, color: "Black", mileage: 0.0)
	}
	
	// Опцмональный инициализатор - может вернуть nil
	convenience init?(brand: String, model: String, yearString: String, color: String, mileage: Double) {
		guard let year = Int(yearString) else {
			return nil
		}
		self.init(brand: brand, model: model, year: year, color: color, mileage: mileage)
	}
	
}

let car = Car(brand: <#T##String#>, model: <#T##String#>, year: <#T##Int#>)

/*
 1. Designated инициализатор:
 - Основной инициализатор класса
 - Должен инициализировать все свойства класса
 
 2. Convenience инициализатор:
	- Вторичный инициализатор
	- Должен вызывать designated инициализатор того же класса
	- Может устанавливать значения по умолчанию для некоторых параметров
 
 3. Failable (проваливающийся) инициализатор:
	- Может вернуть nil, если условия не выполняются
 */
