import Cocoa

/*
 However, classes differ from structs in five key places:

 You can make one class build upon functionality in another class, gaining all its properties and methods as a starting point. If you want to selectively override some methods, you can do that too.
 
 Because of that first point, Swift won’t automatically generate a memberwise initializer for classes. This means you either need to write your own initializer, or assign default values to all your properties.
 
 When you copy an instance of a class, both copies share the same data – if you change one copy, the other one also changes.
 
 When the final copy of a class instance is destroyed, Swift can optionally run a special function called a deinitializer.
 
 Even if you make a class constant, you can still change its properties as long as they are variables.
 */

class Game {
    var score = 0 {
        didSet {
            print("Current score: \(score)")
        }
    }
}

var game = Game()
game.score += 10

//class inheritance

class Employee {
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}

//subclasses
class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours.")
    }
    
    override func printSummary() {
        print("I'm a developer who will sometimes work \(hours) hours a day, but other times spend hours arguing about whether code should be indented using tabs or spaces.")
    }
}

class Manager: Employee {
    func work() {
        print("I'm going to meetings for \(hours) hours.")
    }
}

let robert = Developer(hours: 5)
let joseph = Manager(hours: 3)
robert.work()
joseph.work()

let novall = Developer(hours: 8)
novall.printSummary()

//initializers for classes

class Vehicle {
    let isElectrical: Bool
    
    init(isElectrical: Bool) {
        self.isElectrical = isElectrical
    }
}

class Car: Vehicle {
    let isConvertible: Bool
    
    init(isElectrical: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectrical: isElectrical)
    }
}

let teslaX = Car(isElectrical: true, isConvertible: false)
print(teslaX.isConvertible)

//copy classes

class User {
    var username = "Anonymous"
    
    func copy() -> User {
            let user = User()
            user.username = username
            return user
        }
    //deep copy
    //with this function we can create a unique copy of a class and any changes in the future won't impact the original
}

var user1 = User()

var user2 = user1.copy()
user2.username = "Kev"

print(user1.username)
print(user2.username)
//all classes share the same data
//unless we create user1 and user2 by calling User() twice separately, hence it will be two different things
/*
 var user1 = User()
 var user2 = User()
 
 user2.username = "Kev"
 
 then the final output will be
 Anonymous
 Kev
*/

//Deinitializer

class someUser {
    let id: Int
    
    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive.")
    }
    
    deinit {
        print("User \(id): I'm dead.")
    }
}

for i in 1...3 {
    let someuser = someUser(id: i)
    print("User \(someuser.id): I'm in control!")
}

var lotsofuser = [someUser]()

for i in 1...3 {
    let auser = someUser(id: i)
        print("User \(auser.id): I'm in control!")
        lotsofuser.append(auser)
}

print("Loop is finished.")
lotsofuser.removeAll()
print("Loop is deleted.")
//the deinitializer is only called when the last remaining reference to a class instance is destroyed

//var inside classes

class varUser {
    var name = "Kev"
}

let varuser = varUser()
varuser.name = "Somebody"
print(varuser.name)

//we created a constant signpoint pointing towards a user, but we erased that user’s name tag and wrote in a different name. The user in question hasn’t changed – the person still exists – but a part of their internal data has changed.
//if we had made the name property a constant using let, then it could not be changed – we have a constant signpost pointing to a user, but we’ve written their name in permanent ink so that it can’t be erased.

var letuser = varUser()
letuser.name = "Somebody"
letuser = varUser()
print(letuser.name)

/*
 Four options
 Constant instance, constant property – a signpost that always points to the same user, who always has the same name.
 Constant instance, variable property – a signpost that always points to the same user, but their name can change.
 Variable instance, constant property – a signpost that can point to different users, but their names never change.
 Variable instance, variable property – a signpost that can point to different users, and those users can also change their names.
 */
