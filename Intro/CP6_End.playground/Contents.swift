import Cocoa

struct Car {
    let model: String
    let seats: Int
    private var currentGear: Int
    
    init(model: String, seats: Int, currentGear: Int) {
        self.model = model
        self.seats = seats
        self.currentGear = currentGear
    }
    
    mutating func changeGear(gear: Int) {
        currentGear = gear
    }
    
    func printGear() {
        print("Current gear: \(currentGear)")
    }
}

var car = Car(model: "AAA", seats: 5, currentGear: 1)
car.printGear()
car.changeGear(gear: 5)
car.printGear()
