import Cocoa

//Access control (public, private)

//private: can be used only in the respective struct
//fileprivate: can be used only in this file
//public: can be used everywhere

//private(set): anyone can read the specific data but it can only be edited through my method

//Static property & method

struct School {
    static var studentCount = 0
    
    static func add (student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}

School.add(student: "Kev")
print(School.studentCount)

//we can directly write as such is because that those properties in the struct are static, it means that those data belongs to the struct (School) itself, so we don't have to create another struct in order to use it

//self: current value of the struct
//Self: current data type of the struct (the same as other data types such as String, Bool)

struct AppData {
    static let version = "1.3 Beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "www.google.com"
}
//by doing this, we can check the app version just by calling AppData.version

//another usage is to create example as SwiftUI works the best when it can show you the preview of your current app

struct Employee {
    let username: String
    let password: String
    
    static let example = Employee(username: "Kev", password: "abcdef")
}

//so when u wanted to test out the preview, just call Employee.example
print(Employee.example)
