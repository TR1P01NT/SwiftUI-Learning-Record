import Cocoa

//struct

struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("\(title) by \(artist), \(year)")
    }
}

let Memories = Album(title: "Memories...", artist: "The Chainsmokers", year: 2017)

print(Memories.title)

Memories.printSummary()

//complex struct

struct Employee {
    let name: String
    var vacationRemaining: Int
    
    mutating func takeVacation(days: Int) { //any function inside struct that will change data will need to add a mutating word
        if vacationRemaining > days {
            vacationRemaining -= days
            print("Going vacation")
            print("Days remaining: \(vacationRemaining)")
        }
        else {
            print("Not enough days remaining")
        }
    }
}

var someone = Employee(name: "Kev", vacationRemaining: 20)
someone.takeVacation(days: 10)
print(someone.vacationRemaining)

var archer1 = Employee(name: "Sterling Archer", vacationRemaining: 14)
var archer2 = Employee.init(name: "Sterling Archer", vacationRemaining: 14)

//if the code is such

//let name: String
//var vacationRemaining = 14

//then both of these are still correct

//let kane = Employee(name: "Lana Kane")
//let poovey = Employee(name: "Pam Poovey", vacationRemaining: 35)


