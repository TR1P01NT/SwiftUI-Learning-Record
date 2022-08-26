import Cocoa

protocol Building {
    var roomCount: Int {get set}
    var cost: Int {get set}
    var agentName: String {get set}
    func salesSummary()
}

struct House: Building {
    var roomCount = 4
    var cost = 300_000
    var agentName = "Household"
    
    func salesSummary() {
        print("This is a $\(cost) house with \(roomCount) rooms and its agent is \(agentName).")
    }
}

let myHouse = House()
myHouse.salesSummary()

struct Office: Building {
    var roomCount = 8
    var cost = 500_000
    var agentName = "Real Estate"
    
    func salesSummary() {
        print("This is a $\(cost) office room with \(roomCount) rooms and its agent is \(agentName)")
    }
}

let myOffice = Office()
myOffice.salesSummary()
