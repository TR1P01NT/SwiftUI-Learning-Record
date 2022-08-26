import Cocoa

enum squareRootError: Error {
    case outOfBound
    case noRoot
}

func findSquareRoot (_ num: Int) throws -> Int {
    if (num < 1) || (num > 10_000) {
        throw squareRootError.outOfBound
    }
    
    var root: Int
    
    for i in 1...4000 {
        if (i * i) == num {
            root = i
            return root
        }
    }
    
    throw squareRootError.noRoot
}

do {
    let answer = try findSquareRoot(400)
    print("The root number is: \(answer)")
} catch squareRootError.outOfBound {
    print("Please enter a number between 1 and 10000.")
} catch squareRootError.noRoot {
    print("No root number found.")
}
