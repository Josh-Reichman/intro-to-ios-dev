//: Playground - noun: a place where people can play

import UIKit
//NOTE: let = constant, var = variable
var str = "Hello, playground"

var optionalStr : String?
var optionalInt : Int? = 9
let actualInt : Int = optionalInt!

//Does not work! see below
//let actualString : String = optionalStr!

//NOTE: from class: if let actualString = optionalStr
if optionalStr != nil {
    
}

var myStr = "7"
var possibleInt = Int(myStr)
//

//
var ratingList = [ "poor", "fine", "good", "excellent"]
ratingList[0]
ratingList[0] = "bad"
//

//
var emptyArray = [String]()
var test : Bool = true
//

//
let t = (first:1, second:"First")
let temp = t.0
let temp2 = t.first
//

//
let number = 23
if(number < 10){
    print("The number is too small")
}else if number > 100 {
    print("the number is too big")
}else {
    print("the number is between 10 and 100")
}
//

//
let individualScores = [75,42,103,87,12]
var teamScore = 0
for score in individualScores{
    if score > 50{
        teamScore += 3
    }else{
        teamScore += 1
    }
}
print(teamScore)
//

//
var sum = 0
for i in 1..<10{
    sum += i
}
sum
//

//
var optionalName: String? = "John"
var optionalHello: String? = "Hello"
if let hello = optionalHello, hello.hasPrefix("H"), let name = optionalName {
    var greeting1 = "\(hello), \(name)"
    print(greeting1)
}
//
