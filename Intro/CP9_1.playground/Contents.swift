import Cocoa

//handle multiple optionals using optional chaining

let names = ["Arya", "Bran", "Robb", "Sansa"]

let chosen = names.randomElement()?.uppercased() ?? "No one"
print("Next in line: \(chosen)")
//if the randomElement returns a value so unwrap it then, and if do get a value, then should uppercase it then

struct Book {
    let title: String
    let author: String?
}

var book: Book? = nil
let author = book?.author?.first?.uppercased() ?? "A"
print(author)

//if we have a book, then we have an author, then it has a first letter, then we should uppercase it, else return A

//function failure with optionals

enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

let user = (try? getUser(id: 23)) ?? "Anonymous"
print("User: \(user)")

//the getUser function will always return an error
//hence the try will always get a optional string
//and because of the coalescing operator, it will return Anonymous if nil is found (nothing is found)

