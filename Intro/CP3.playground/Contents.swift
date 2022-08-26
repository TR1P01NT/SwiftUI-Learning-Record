import Cocoa

// if condition

let score = 85

if score > 80 {
    print("Well done!")
}

let myName = "Kev"
let hisName = "Jia Yun"

if myName > hisName {
    print("It's \(hisName) vs \(myName)")
}
else {
    print("It's \(myName) vs \(hisName)")
}

var numbers = [1, 2, 3]

numbers.append(4)

if numbers.count > 3 {
    numbers.remove(at: 0)
}

print(numbers)

let country = "Canada"

if country == "Australia" {
    print("Hi")
}

let userName = "Kev"

if userName != "Anonymous" {
    print("Welcome, \(userName).")
}

var name = "Jia Yun"

if name == "" {
    name = "Anonymous"
}

//or we can use name.count, as it's slower to compare strings to strings

if name.count == 0 {
    name = "Anonymous"
}

//or even faster and for complex strings

if name.isEmpty {
    name = "Anonymous"
}

print("Welcome, \(name).")

//if else condition

let temp = 25

if temp > 20 && temp < 30 {
    print("Today is a good day.")
}

let userAge = 15
let parentConsent = true

if userAge >= 18 || parentConsent {
    print("You can buy the game.")
}

enum TransportOption {
    case airplane, helicopter, bicycle, car, scooter
}

let transport = TransportOption.airplane

if transport == .airplane || transport == .helicopter {
    print("Fly")
}
else {
    print("Road")
}

//swtich statement

enum Weather {
    case sun, windy, rain, snow, unknown
}

let forecast = Weather.windy

//all possible values must be handled

switch forecast {
case .sun:
    print("Sunny day")
case .rain:
    print("Prepare your umbrella")
case .windy:
    print("Cool and windy")
case .snow:
    print("Freezing outside")
//case .unknown:
//    print("Broken")
default:
    print("Weird")
}

//fallthrough
//continue executing the switch condition

let day = 4
print("My true love gave to me…")

//start to execute from case 4 to default

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}
//output
/*
 My true love gave to me…
 4 calling birds
 3 French hens
 2 turtle doves
 A partridge in a pear tree
 */

//Ternary conditional operator

let peopleAge = 18
let canVote = peopleAge >= 18 ? "Yes" : "No"
//condition ? if true output : if false output

print(canVote)

let hour = 23
print(hour > 12 ? "It's after noon" : "It's before noon")

let names = ["A", "B", "C"]

let peopleCount = names.isEmpty ? 0 : names.count

print("People count: \(peopleCount)")

enum theme {
    case light, dark
}

let themeSet = theme.light

let background = (themeSet == .light) ? "Light Theme" : "Dark Theme"
print(background)

//for loop

let platforms = ["iOS", "macOS", "iPadOS", "WatchOS", "tvOS"]

for os in platforms { //the os can be anything from os, to system to even rubberchicken
    print("Swift works well in \(os)")
}

for i in 1...12 {
    print("5 * \(i) is \(5 * i)")
}
//print() without anything in it will just print out a newline

for i in 1...5 {
    print("Counting from 1 through 5: \(i)")
}

//1 through 5 means 1 2 3 4 5

print()

for i in 1..<5 {
    print("Counting 1 up to 5: \(i)")
}

//1 up to 5 means 1 2 3 4 and stops before 5

var lyrics = "Haters gonna"

for _ in 1...5 { //if we input i but we don't use it in the code then we better either use an underscore or just remove it
    lyrics += " hate"
}

print(lyrics)

//while loop

var countdown = 10

while countdown > 0 {
    print("\(countdown)...")
    countdown -= 1
}

var roll = 0

while roll != 20 {
    roll = Int.random(in: 1...20)
    print("Rolled a \(roll)")
}

//break and continue

let filenames = ["sometext.txt", "dog.jpg", "cat.jpg"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }
    
    print("Found a picture, \(filename)")
}

let number1 = 4
let number2 = 12
var multiples = [Int]()

for i in 1...100000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)
    }
    
    if multiples.count == 5 {
        break
    }
}

print(multiples)

