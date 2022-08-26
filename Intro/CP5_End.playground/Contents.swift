import Cocoa

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

let evenNumbers = luckyNumbers.filter { $0 % 2 != 0 }

print(evenNumbers)

let sortedNumbers = evenNumbers.sorted()

print(sortedNumbers)

let finalNumbers = sortedNumbers.map { String($0) + " is a lucky number." }

for finalNumber in finalNumbers {
    print("\(finalNumber)")
}
