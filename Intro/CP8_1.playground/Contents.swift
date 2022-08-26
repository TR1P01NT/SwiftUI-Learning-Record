import Cocoa

func getRandomNumber() -> some Equatable {
    Int.random(in: 1...6)
}

func getRandomBool() -> some Equatable {
    Bool.random()
}

//Returning an opaque return type means we still get to focus on the functionality we want to return rather than the specific type, which in turn allows us to change our mind in the future without breaking the rest of our code. For example, getRandomNumber() could switch to using Double.random(in:) and the code would still work great.

//Create and use extensions

var quote = "   The truth is rarely pure and never simple   "

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    mutating func trim() {
        self = self.trimmed()
    }
    
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

let trimmedQuote = quote.trimmed()
quote.trim()
print(trimmedQuote)
print(quote)

//aside from extension, we can also use function but each has its own benefit
/*
 When you type quote. Xcode brings up a list of methods on the string, including all the ones we add in extensions. This makes our extra functionality easy to find.
 Writing global functions makes your code rather messy – they are hard to organize and hard to keep track of. On the other hand, extensions are naturally grouped by the data type they are extending.
 Because your extension methods are a full part of the original type, they get full access to the type’s internal data. That means they can use properties and methods marked with private access control, for example.

 */

let lyrics = """
But I keep cruising
Can't stop, won't stop moving
It's like I got this music in my mind
Saying it's gonna be alright
"""

print(lyrics.lines.count)

struct Book {
    let title: String
    let pageCount: Int
    let readingHours: Int
}

extension Book {
    init(title: String, pageCount: Int) {
        self.title = title
        self.pageCount = pageCount
        self.readingHours = pageCount / 50
    }
}

//if we wanted our Book struct to have the default memberwise initializer as well as our custom initializer, we’d place the custom one in an extension

let lotr = Book(title: "Lord of the Rings", pageCount: 1178, readingHours: 24)

//create and use protocol extension

let guests = ["Mario", "Luigi", "Peach"]

//array, sets, dictionary and such are all conform to a built in protocol called Collection
//so by using Collection we can apply the rule to all the types

extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

if guests.isNotEmpty {
    print("Guests count: \(guests.count)")
}

//protocol-oriented programming

protocol Person {
    var name: String { get }
    func sayHello()
}

extension Person {
    func sayHello() {
        print("Hi, I'm \(name)")
    }
}

struct Employee: Person {
    let name: String
}

let worker = Employee(name: "Kev")
worker.sayHello()


//Bonus chapter

//to use it for Int and Double, we need to change it to something that includes both of them
extension Numeric {
    //if we multiply two double, it won't return int, so we change it to return the data type of itself
    func squared() -> Self {
        self * self
    }
}

let wholeNumber = 5
print(wholeNumber.squared())

//equatable

struct User: Equatable {
    let name: String
}

let user1 = User(name: "Link")
let user2 = User(name: "Zelda")
print(user1 == user2)
print(user1 != user2)

//Comparable

//we don’t even need to add Equatable to our struct in order to get == to work
struct someUser: Comparable {
    let name: String
}

func <(lhs: someUser, rhs: someUser) -> Bool {
    lhs.name < rhs.name
}

let someuser1 = someUser(name: "Kev")
let someuser2 = someUser(name: "Lee")
print(someuser1 < someuser2)
print(someuser1 <= someuser2)
print(someuser1 > someuser2)
print(someuser1 >= someuser2)
