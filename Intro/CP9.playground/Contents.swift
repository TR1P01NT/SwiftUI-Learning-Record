import Cocoa

//Optionals

let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]

if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}

//Schrödinger’s data type, only way to know is to check
var username: String? = nil

//unwrap the username, then check if username has anything inside of it
if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional was empty.")
}

func square(number: Int) -> Int {
    number * number
}

//when unwrapping, we can unwrap it into the same name, so that we don't have to repeatedly write the unwrap thingy
var number: Int? = nil
if let number = number {
    print(square(number: number))
}
    
//unwrap optionals with guard

var myVar: Int? = 3

if myVar != nil {
    print("Run if myVar has a value inside")
}

//guard let unwrappedGuard = myVar else {
//    print("Run if myVar doesn't have a value inside")
//}
//an early return method

func printSquare(of number: Int?) {
    guard let num = number else {
        print("Missing input")
        return
    }

    print("\(num) x \(num) is \(num * num)")
}
printSquare(of: 5)
printSquare(of: nil) //early return

//unwrap optionals with nil colleasing

let captains = [
    "Enterprise": "Picard",
    "Voyager": "Janeway",
    "Defiant": "Sisko"
]

//let new = captains["Serenity"]
//as Serenity is not present inside of it, hence it will read it as a nil
//so with the nil colleasing operator, we can assign a respective value to it if the data we specified is not found
let new = captains["Serenity"] ?? "N/A"
//when using with dictionary, we can also write it this way and it works the same
//let new = captains["Serenity", default: "N/A"]

//but this operator can work with any other optionals

let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"
print(favorite)

struct Book {
    let title: String
    let author: String?
}

let book = Book(title: "Beowulf", author: nil)
let author = book.author ?? "Anonymous"
print(author)

let input = ""
let somenumber = Int(input) ?? 0
print(somenumber)
