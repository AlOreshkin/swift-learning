import UIKit

let width = 36
let height = 36
let square = width * height / 100

switch square {
case 0 ..< 6:
	print("Места хватит только посадить картошку, не берем")
case 6 ..< 8:
	print("Площадь участка на грани, нужно ехать смотреть участок в живую")
case 8 ..< 12:
	print("Площадь хорошая, все уместится")
default :
	print("Площадь слишком большая, нам не подходит")
}
