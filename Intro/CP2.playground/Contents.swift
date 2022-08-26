import Cocoa

//Array

var numbers = [1, 5, 20]

print(numbers[0])

numbers.append(21)

print(numbers[3])

//Empty Array

var scores = Array<Int>()

scores.append(20)
scores.append(21)
scores.append(100)

print(scores[1])

var albums = [String]() //another way of initializing an empty array
albums.append("Memories Do Not Open")
albums.append("Sick Boy")
albums.append("World War Joy")
albums.append("So Far So Good")

print(albums.count)

albums.remove(at: 1)
print(albums.count)

albums.removeAll()
print(albums.count)

var shows = ["Stranger Things", "The Witcher", "Ted Lasso"]
print(shows.contains("Dark"))

print(shows.sorted())

let reversedShows: [String] = shows.reversed()
print(reversedShows)

print(shows.reversed()) //complex output

//Dictionaries

let student = [
    "name": "Kev",
    "job": "Student",
    "Location": "Taiwan"
]

// print(student["name"])
//“Expression implicitly coerced from 'String?' to 'Any’”
//Not sure if the data is there hence optional

print(student["name", default: "Unknown"])

let olympics = [
    2012: "London",
    2016: "Rio de Jenaro",
    2020: "Tokyo"
]

print(olympics[2012, default: "Unknown"])

// [String: Int] means string for the keys and integers for the values

var heights = [String: Int]()
heights["a"] = 175
heights["b"] = 180
heights["c"] = 166

//to replace value

heights["a"] = 177

//Sets

let people = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])

print(people) //the output order won't matter

var peoples = Set<String>()
peoples.insert("Denzel Washington")
peoples.insert("Tom Cruise")
peoples.insert("Nicolas Cage")
peoples.insert("Samuel L Jackson")

//using insert instead of append as we are not adding new data to the end of the "line" and order doesn't matter in sets
//using contains in set is a lot more faster than using it with array

//Enumeration

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

var day = Weekday.friday
day = Weekday.thursday
day = .monday //once the data type is set then u can skip the enum name after the first assignment

enum Weekend {
    case saturday, sunday
}

//Type Annotation

var score: Int = 0
var theScore: Double = 0 //with annotating then Swift will know the data will be double instead of double

var aaa: [String] = ["aa", "bb"] //Array
var theUser: [String: Int] = ["id": 18] //Dictionary
var books: Set<String> = Set(["Maze Runner"]) //Set

//to create an empty array, one can write the following
var citiesW: [String] = []
//or shorter
var clues = [String]()

//An example
let theusername: String //first set what will the data be in the future
theusername = "Tripoint" //assign a data to it
print(theusername) //print it
//because it's a constant hence we cannot assign a second time to it
