import Cocoa

//Closures

func greetUser() {
    print("Hi")
}

let greetCopy = greetUser
greetCopy()
//when u copy a function, u don't need to write the parentheses after it ()

//closure expression
let callUser = {
    print("Hi User")
}

callUser()

//closure accept parameters
let sayHello = { (name: String) -> String in
    "Hi \(name)"
}

let helloUser = sayHello("Kev")
print(helloUser)


//use in to mark the end of parameter and return type

func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989)
print(user)

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

//what if we want the captain to be at the front
//we can use a custom function to achieve that

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
}
//as long as a function accept two strings and return a boolean value, then the sorted function can use it

var captainFirstTeam = team.sorted(by: captainFirstSorted)
print(captainFirstTeam)

//we can also call the sorted function by a closure
var captainSecondTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
})

print(captainSecondTeam)
