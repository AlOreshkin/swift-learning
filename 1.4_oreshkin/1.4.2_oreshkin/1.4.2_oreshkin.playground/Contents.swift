import UIKit

let originalText = "Я учу язык программирования - Kotlin"
let textToReplace = "Kotlin"
let newText = "Swift"

let replacedText = originalText.replacingOccurrences(of: textToReplace, with: newText)

let convertedText = """
Исходныйы текст:
\(originalText)

Текст для замены:
\(textToReplace)

Меняем \(textToReplace) на:
\(newText)

Результат выполнения программы:
\(replacedText)
"""

print(convertedText)
