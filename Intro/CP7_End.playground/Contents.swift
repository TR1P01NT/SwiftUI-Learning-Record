import Cocoa

class Animal {
    let legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    func speak() {
        print("It's a dog.")
    }
}

class Cat: Animal {
    let isTame: Bool
    
    init(isTame: Bool, legs: Int) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    
    func speak() {
        print("It's a cat.")
    }
}

class Corgi: Dog {
    override func speak() {
        print("It's a corgi.")
    }
}

class Poodle: Dog {
    override func speak() {
        print("It's a poodle.")
    }
}

class Persian: Cat {
    override func speak() {
        print("It's a persian.")
    }
}

class Lion: Cat {
    override func speak() {
        print("It's a lion.")
    }
}

let myCat = Persian(isTame: true, legs: 4)
print(myCat.isTame)
myCat.speak()

let myDog = Corgi(legs: 4)
myDog.speak()
