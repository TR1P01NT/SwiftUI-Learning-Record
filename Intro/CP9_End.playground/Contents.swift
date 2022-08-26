import Cocoa

func oneline (num: [Int]?) -> Int {num?.randomElement() ?? Int.random(in: 1...100)}

//write a function that accepts an optional array of integers, and returns one randomly. If the array is missing or empty, return a random number in the range 1 through 100.
//write your function in a single line of code
