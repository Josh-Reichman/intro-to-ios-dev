//: Playground - noun: a place where people can play

import UIKit

///////////////// 1/22/2018 content below /////////////////
////
//NOTE: let = constant, var = variable
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
////

////
var ratingList = [ "poor", "fine", "good", "excellent"]
ratingList[0]
ratingList[0] = "bad"
////

////
var emptyArray = [String]()
var test : Bool = true
////

////
let t = (first:1, second:"First")
let temp = t.0
let temp2 = t.first
////

////
let number = 23
if(number < 10){
    print("The number is too small")
}else if number > 100 {
    print("the number is too big")
}else {
    print("the number is between 10 and 100")
}
////

////
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
////

////
var sum = 0
for i in 1..<10{
    sum += i
}
sum
////

////
var optionalName: String? = "John"
var optionalHello: String? = "Hello"
if let hello = optionalHello, hello.hasPrefix("H"), let name = optionalName {
    let greeting1 = "\(hello), \(name)"
    print(greeting1)
}
//


///////////////// 1/26/2018 content below /////////////////
//
let vegetable = "red pepper"
switch vegetable {
case "celery":
    let vegetableComment = "add some raisins"
case "cucumber", "watercress":
    let vegetableComment = "don't add raisins"
case let x where x.hasSuffix("pepper"):
    let vegetableComment = "Is it spicy?"
default:
    let vegetableComment = "everything else"
}
vegetable.hasSuffix("le")
////

////
var n = 2
while n < 100 {
    n *= 2
}
//do while loop
n=2
repeat{
    n *= 2
} while n < 2
////

////
func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)."
}
greet(name: "John", day: "Friday")
// having _ before a label prevents typing the label when calling a function
func greetWithExternalNames( _ name: String, externalDay: String ) -> String {
    return "Hello \(name), today is \(externalDay)."
}
greetWithExternalNames("Tom", externalDay: "Monday")
////

////
var array = ["apple","bannana"]
array.insert("orange", at: 1)
////

////
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int){
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    for score in scores{
        if score < min {
            min = score
        }else if score > max {
            max = score
        }
        sum += score
        }
  return(min,max,sum)
}
let scores = [98,79,83,100,60]
let tempScore = calculateStatistics(scores: scores)
tempScore.max
////

////
func sumOf(numbers: Int ...) -> Int{
    var sum = 0
    for number in numbers{
        sum += number
    }
    return sum
}
sumOf(numbers: 42,38,100,45)
sumOf()
////

////
func returnFifteen() -> Int{
    var y = 10
    func add(){
        y += 5
    }
    add()
    return y
}
returnFifteen()
////

////
func makeIncrementer() -> ( (Int) -> Int ) {
    func addOne(number: Int) -> Int {
        return number + 1
    }
    return addOne
}
let increment = makeIncrementer()
increment(8)
////

////
typealias NextNumber = (Int) -> Int
func makeIncrementer2() -> (NextNumber) {
    func addOne(number: Int) -> Int {
        return number + 1
    }
    return addOne
}
let increment2 = makeIncrementer2()
increment2(8)
////

////
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item){
            return true
        }
    }
    return false
}
func isEven(number: Int) -> Bool{
    return number % 2 == 0 ? true : false
}
var numbers = [23,43,56,49]
hasAnyMatches(list: numbers, condition: isEven)
////
