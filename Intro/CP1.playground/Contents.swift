import Cocoa

var greeting = "Hello, playground"

//variable and constant

var wording = "Hi"
print(wording)

wording = "Hello"
print(wording)

let charr = "Hi there"

//string

let line = "This is a good scenery. 🌴"
print(line)
print(line.count) //print the length of the string

let lineLength = line.count
print(lineLength)

let secondLine = "Testing \"something\""
print(secondLine)

let multiLine = """
This
is
a
multiple
line
code.
"""
//all multiline string quotes should be on their own seperate lines

print(secondLine.uppercased())

//search for words in a string

print(wording.hasPrefix("Hello"))
print(wording.hasSuffix("there"))

//integer

let score = 10
let bigNumber = 100000000
let bigNumberClear = 100_000_000 //underscore can be in any form and place

var finalScore = 10
finalScore += 25
print(finalScore)

let someNumber = 120
print(someNumber.isMultiple(of: 3))
//or
print(150.isMultiple(of: 3))

//decimal numbers

var decimalNumOne = 0.1
let decimalNumTwo = 0.2
decimalNumOne += decimalNumTwo
print(decimalNumOne) //the result isn't single decimal digit only

//we can't also mix integers and double/float together as they are two different things

let a = 1
let b = 2.0
let c = a + Int(b)
let d = Double(a) + b

print(c)
print(d)

//Type Safety
//once Swift has decided what kind of data a variable will hold then we won't be able to change it to other data type later

//Boolean

var gameOver = false
print(gameOver)

gameOver = !gameOver
print(gameOver)

gameOver.toggle()
print(gameOver)

let finalNum = 120.isMultiple(of: 3)
print(finalNum)

//String joining

let firstPart = "Hello, "
let secondPart = "world!"
greeting = firstPart + secondPart

print(greeting)

greeting = firstPart + "new " + secondPart

print(greeting)

//String Interpolation

let name = "Kev"
let age = 20
let message = "Hi, my name is \(name) and I'm \(age) years old."
print(message)

print("5 * 5 is \(5 * 5)")
