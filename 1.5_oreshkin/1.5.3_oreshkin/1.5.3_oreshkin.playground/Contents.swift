import UIKit

let xCoordinate = -1
let yCoordinate = 0

if xCoordinate == 0 && yCoordinate == 0 {
	print("Точка с координатой (\(xCoordinate), \(yCoordinate)) расположена в середине координатной плоскости")
	
} else if xCoordinate < 0 && yCoordinate > 0 {
	print("Точка с координатой (\(xCoordinate), \(yCoordinate)) расположена в части A")
	
} else if xCoordinate > 0 && yCoordinate > 0 {
	print("Точка с координатой (\(xCoordinate), \(yCoordinate)) расположена в части B")
	
} else if xCoordinate < 0 && yCoordinate < 0 {
	print("Точка с координатой (\(xCoordinate), \(yCoordinate)) расположена в части D")
	
} else if xCoordinate > 0 && yCoordinate < 0 {
	print("Точка с координатой (\(xCoordinate), \(yCoordinate)) расположена в части C")
	
} else {
	print("Точка с координатой (\(xCoordinate), \(yCoordinate)) не расположена не в одной из частей и расположена на оси \(xCoordinate == 0 ? "Y" : "X")")
}
