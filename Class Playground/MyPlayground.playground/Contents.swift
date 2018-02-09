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
 //   print("the number is between 10 and 100")
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
//print(teamScore)
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
    _ = "\(hello), \(name)"
  //  print(greeting1)
}
////

///////////////// 1/26/2018 content below /////////////////

////
//replaced vegetableComment to _ to remove warnings
let vegetable = "red pepper"
switch vegetable {
case "celery":
    _ = "add some raisins"
case "cucumber", "watercress":
    _ = "don't add raisins"
case let x where x.hasSuffix("pepper"):
    _ = "Is it spicy?"
default:
    _ = "everything else"
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

///////////////// 1/29/2018 content below /////////////////

////
typealias Time3 = (Int) -> Int
var myClosure : Time3 = {
    (number: Int) -> Int in
    let result = number * 3
    return result
}
myClosure(5)
////

////
let scores2 = [98,79,83,100,60]
scores2.map({
    (number: Int) -> Int in
    let result = number * 3
    return result
})
//simplified version
scores2.map({
    number in
    number * 3
})
//even more simple version (look in to why it runs 1 more time)
scores2.map{$0 * 3}
////

////
var sortedNumbers = scores2.sorted(by: {
    (number1: Int, number2: Int) -> Bool in
    return number1 > number2
})
scores2.sorted{$0>$1}
scores2.sorted()
////

////
class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}
var myShape = Shape()
myShape.simpleDescription()
class NamedShape {
    var numberOfSides = 0
    var name: String
    init(name: String){
        //self. is the same as this.
        self.name = name
    }
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}
var nameShape = NamedShape(name: "Square")
nameShape.numberOfSides = 4
nameShape.simpleDescription()
////

////
//class inheritance
//Equilateral Triangle
class EquilateralTriangle: NamedShape{
    var sideLength: Double
    //init own vars first, then parent class
    init(sideLength: Double, name: String){
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    var perimeter: Double {
        get {
            return 3 * sideLength
        }
        set (myValue) {
            sideLength = myValue/3
        }
    }
    override func simpleDescription() -> String {
        return "An Equilateral Triangle with sides of length \(sideLength)."
    }
}
var triangle = EquilateralTriangle(sideLength: 3.1, name: "An Equilateral Triangle")
triangle.perimeter
triangle.perimeter = 15
triangle.sideLength
////

////
//Circle
class Circle: NamedShape{
    var radius: Double
    //? means init may fail
    init?(radius: Double, name: String){
        self.radius = radius
        super.init(name: name)
        numberOfSides = 1
        if radius <= 0 {
            return nil
        }
    }
}
let failedCircle = Circle(radius: -1, name:"fail circle")
let successfulCircle = Circle(radius: 1, name: "success circle")
////

///////////////// 1/31/2018 content below /////////////////

////
//Continued from code above
class Square: NamedShape {
    var sideLength : Double
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    func area() -> Double {
        return sideLength*sideLength
    }
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)"
    }
}
let shapesArray = [EquilateralTriangle(sideLength: 1.5, name: "T1"),EquilateralTriangle(sideLength: 4.5, name: "T2"), Square(sideLength: 3.5, name:"S1"),Square(sideLength: 5.5, name:"S2")]

for shape in shapesArray{
    if let square = shape as? Square {
        square.area()
    }
    else if shape is EquilateralTriangle{
        
    }
}
////

////
class TriangleAndSquare{
    var triangle: EquilateralTriangle{
        willSet{
            square.sideLength = newValue.sideLength
        }
    }
    var square: Square{
        willSet{
            triangle.sideLength = newValue.sideLength
        }
    }
    init(size: Double, name: String){
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}
var TAndS = TriangleAndSquare(size: 10, name: "test")
TAndS.triangle = EquilateralTriangle(sideLength: 15, name: "T3")
////

////
struct LevelTracker{
    static var highestUnlockedLevel = 1
    var currentLevel : Int
    static func unlock(_ level: Int){
        highestUnlockedLevel = level
    }
    static func isUnlocked(_ level: Int) -> Bool{
        return level < highestUnlockedLevel
    }
    @discardableResult //optional
    mutating func advance(to level: Int) -> Bool{
        if LevelTracker.isUnlocked(level){
            currentLevel = level
            return true
        }
        else{
            return false
        }
    }
}
////

////
class Player {
    var tracker = LevelTracker(currentLevel: 1)
    //let playerName : String
    func completed(level: Int){
        LevelTracker.unlock(level+1)
        tracker.advance(to: level+1)
    }
}
////

///////////////// 2/2/2018 content below /////////////////

////
enum Rank: Int {
    case Ace = 1
    case Two, Three, Four
    case Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}
enum Suit {
    case Spades, Hearts, Diamonds, Clubs
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
            //case .Clubs:
        //    return "clubs"
        case .Clubs:
            return "clubs"
        }
    }
}
let ace = Rank.Ace
let aceRawValue = ace.rawValue
var card = Rank.Three
var cardRawValue = card.rawValue
var hearts = Suit.Hearts
let heartsDescription = hearts.simpleDescription()
hearts = .Clubs
////

////
enum Barcode{
    case UPCA(Int, Int, Int, Int)
    case QRCode(String)
}
var productBarcode = Barcode.UPCA(8, 85900, 51226, 3)
productBarcode = .QRCode("ABCDEFGHIJKLMNOP")
switch productBarcode {
case .UPCA(let numberSystem, let manufacturer, let product, let check):
    print("UPC-A: \(numberSystem), \(manufacturer), \(product), \(check).")
case .QRCode(let productCode):
    print("QR code: \(productCode).")
}
////

///////////////// 2/9/2018 content below /////////////////

////
protocol UIProtocol{
    var simpleDescription: String {get}
    func adjust()
}
class SimpleClass: UIProtocol{
    var simpleDescription: String = "A vary simple class."
    var anotherProperty: Int = 32
    func adjust() {
        simpleDescription += "now 100% adjusted"
    }
}
class UISomething{
    var delegate: UIProtocol?
    func anotherFunction(){
        delegate?.adjust()
        let tmp = delegate?.simpleDescription
    }
}
