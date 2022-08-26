import Cocoa

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

//the function we provide to sorted() must provide two strings and return a Boolean
//so we don't have to repeat it and we can now simplify the code

//let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
//    if name1 == "Suzanne" {
//        return true
//    } else if name2 == "Suzanne" {
//        return false
//    }
//
//    return name1 < name2
//})

//we can simplify to this code
//let captainFirstTeam = team.sorted { name1, name2 in
//    if name1 == "Suzanne" {
//        return true
//    } else if name2 == "Suzanne" {
//        return false
//    }
//
//    return name1 < name2
//}

//Swift can automatically provide parameter names for us, using shorthand syntax
//so we don't even need to write the name1 name2, instead we can just use something like $0 $1

let captainFirstTeam = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }

    return $0 < $1
}

print(captainFirstTeam)

//some example
//if we want to reverse sort an array

//let reverseTeam = team.sorted {
//    return $0 > $1
//}

//because it's short and only has one line of code inside it, so we can ignore the return and just write all in just one line
let reverseTeam = team.sorted { $0 > $1 }

//some examples about closures
let tOnly = team.filter { $0.hasPrefix("T") }
print(tOnly)
//this will only print people with name starts with "T"

let uppercaseTeam = team.map { $0.uppercased() }
print(uppercaseTeam)
//this function let us transform every item in the specific array

