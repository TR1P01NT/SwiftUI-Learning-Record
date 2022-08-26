import Cocoa

//compute property value

//By doing this, we can directly access the value inside the struct but we will lose information about the initial value
struct TestEmployee {
    let name: String
    var vacationRemaining: Int
}

var archer = TestEmployee(name: "Sterling Archer", vacationRemaining: 14)
archer.vacationRemaining -= 5
print(archer.vacationRemaining)
archer.vacationRemaining -= 3
print(archer.vacationRemaining)

//So we try another method instead

struct Employee {
    let name: String
    var initVacation = 14
    var takenVacation = 0
    
    var remainVacation: Int {
        //get and set
        get {
            initVacation - takenVacation
            }
        set {
            initVacation = takenVacation + newValue
        }
    }
}

var someone = Employee(name: "Kev", initVacation: 10)
someone.takenVacation += 4
someone.remainVacation = 5
print(someone.initVacation)

//Property change
//each time a value/property changes, we want the code to do something

//didSet: to run after the property has been changed
//willSet: to run before the property has been changed

struct Game {
    var score = 0 {
        didSet {
            print("Current score: \(score)")
        }
    }
}

var game = Game()
game.score += 3
game.score += 2

struct App {
    var contacts = [String]() {
        willSet {
            print("Current: \(contacts)")
            print("It will become: \(newValue)")
        }
        didSet {
            print("There are \(contacts.count) now.")
            print("It was \(oldValue.count) before.")
        }
    }
}

var app = App()
app.contacts.append("Kev")
app.contacts.append("Jia Yun")

//Custom initializers

//Both of these are the same
//The only difference is that Swift generates initializers for us and we create one by ourself

/*
 struct Player {
     let name: String
     let number: Int
 }

 let player = Player(name: "Megan R", number: 15)
 */

/*
 struct Player {
     let name: String
     let number: Int

     init(name: String, number: Int) {
         self.name = name
         self.number = number
     }
 }
 */

//example

struct Player {
    let name: String
    let number: Int
    
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...100)
    }
}

//All properties should have a value by the end of the initializer

let player = Player(name: "Jason")
print(player.number)
