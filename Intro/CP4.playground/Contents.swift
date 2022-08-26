import Cocoa

//functions

func printTimeTables (number: Int) {
    for i in 1...12 {
        print("\(i) times \(number) is \(i * number)")
    }
}

printTimeTables(number: 5)

func printTimeTablesEnd (number: Int, end: Int) {
    for i in 1...end {
        print("\(i) times \(number) is \(i * number)")
    }
}

printTimeTablesEnd(number: 5, end: 15)

//return value from function

func diceRoll() -> Int {
    return Int.random(in: 1...6)
}

let result = diceRoll()
print(result)

//string

var line1 = "cab"
var line2 = "acb"

func compareStrings (lineone: String, linetwo: String) -> Bool {
//    let one = lineone.sorted()
//    let two = linetwo.sorted()
//    return one == two
//    return lineone.sorted() == linetwo.sorted()
//or even simpler we can remove the return word as this function will return a value and there is only one line of code
    lineone.sorted() == linetwo.sorted()
}

print(compareStrings(lineone: line1, linetwo: line2))

//triangle
func pythagoras (a: Double, b: Double) -> Double {
//    var total = (a * a) + (b * b)
//    total = sqrt(total)
//    return total
    sqrt((a * a) + (b * b))
}

let c = pythagoras(a: 3, b: 4)
print(c)

//return multiple values

//using dictionary is inconvenient

//func getUser() -> [String: String] {
//    [
//        "firstName": "Kev",
//        "lastName": "Lee"
//    ]
//}
//
//let user = getUser()
//print("Username is \(user["firstName", default: ""]) \(user["lastName", default: "Anonymous"])")

func getUser() -> (firstName: String, lastName: String) {
//    (firstName: "Kev", lastName: "Lee")
    ("Kev", "Lee")
}

//let user = getUser()
//let firstName = user.firstName
//let lastName = user.lastName
let (firstName, lastName) = getUser()
//use underscore to ignore unwanted data, ex let(firstName, _) = getUser()
print("Username is \(firstName) \(lastName)")

//func getUser() -> (String, String) {
//    ("Taylor", "Swift")
//}
//
//let user = getUser()
//print("Name: \(user.0) \(user.1)")

//multiple parameter

func rollDice (sides: Int, count: Int) -> [Int] {
    var rolls = [Int]()
    
    for _ in 1...count {
        let roll = Int.random(in: 1...sides)
        rolls.append(roll)
    }
    
    return rolls
}

print(rollDice(sides: 6, count: 5))

func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO"
let caseResult = isUppercase(string)
print(caseResult)

//external and internal name

func printMultiTable (for number: Int) {
    for i in 1...12 {
        print("\(i) times \(number) is \(i * number)")
    }
}

printMultiTable(for: 5)
//print multiplication table for number 5

//function default value
//after setting a default value, if we don't specify what value we wanted to input, then it will use the default value instead
func printTimesTable(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTable(for: 5, end: 20)
printTimesTable(for: 8)

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
//characters.removeAll()
characters.removeAll(keepingCapacity: true)
print(characters.count)

//if sometimes, just sometimes we wanted to remove something from the array then add back something, then we can try to use another function instead, not clearing all memory assigned to the specific array

//Handle error in functions

enum passwordError: Error {
    case short, obvious
}

func checkPassword (_ password: String) throws -> String{
    if password.count < 5 {
        throw passwordError.short
    }
    if password == "12345" {
        throw passwordError.obvious
    }
    
    if password.count < 8 {
        return "OK"
    }
    else if password.count < 10 {
        return "Good"
    }
    else {
        return "Excellent"
    }
}

let myPassword = "12345"
//try must be written before calling function that could throw an error
//try must also be written inside a do block
do {
    let checkResult = try checkPassword(myPassword)
    print("Password rating: \(checkResult)")
} catch passwordError.short {
    print("Please enter a longer password.")
} catch passwordError.obvious {
    print("Too obvious, please try another.")
} catch {
    print("There was an error.")
}
