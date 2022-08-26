import Cocoa

//accept functions as parameter

//A function that generates an array of integers

func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    //a function that has two parameter
    //one is the size of the array will be
    //another one is a function that will return a number everytime it is called
    //and this whole makeArray function will later return an array
    var numbers = [Int]()
    
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    
    return numbers
}

let rolls = makeArray(size: 50) {
    Int.random(in: 1...20) //this is the generator
}

//or we can write like that

//func generateNumber() -> Int {
//    Int.random(in: 1...20)
//}
//
//let newRolls = makeArray(size: 50, using: generateNumber)
//print(newRolls)
