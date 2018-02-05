//: Playground - noun: a place where people can play

/*
 1. create a function that take a string defined on {1, 2, 3, 4, 5, 6, 7, 8, 9} as input, return the number of digits that are odd, even and divisible by 3
 */
func numbers(input: String) -> String{
    var inputTemp = input
    var numberTemp : Int
    var odd : Int = 0
    var even : Int = 0
    var divThree : Int = 0
    while !inputTemp.isEmpty {
        numberTemp = Int(String(inputTemp.remove(at: inputTemp.startIndex)))!
        if (numberTemp % 2 == 0) {
            even+=1
        }
        else{
            odd+=1
        }
        if (numberTemp % 3 == 0){
            divThree+=1
        }
    }
    return "Odd: \(odd)\nEven: \(even)\nDivisible by 3: \(divThree)"
}
print(numbers(input: "123456789"))
/*
 2. Write a variadic function (function with variable number of parameters) called cat(), its first parameter is a string/char serving as a delimiter, followed by any number of intergers. It returns a string that concaternate all the digits but separated by the delimiter. The default value of the first parameter is " ". For example: if you call print(cat(joiner:":", nums: 1,2,3,4,5,6,7,8,9)), output should be 1:2:3:4:5:6:7:8:9 if you call print(cat(nums: 1,2,3,4,5)), out put should be 1 2 3 4 5
 */

func cat(numbers: Int ...) -> String{
    var numbersTemp = numbers
    var outputString = ""
    while !numbersTemp.isEmpty {
        outputString.append(String(numbersTemp.remove(at: 0)) + " ")
    }
    outputString.removeLast()
    return outputString
}

func cat(delimiter: String, numbers: Int ...) -> String{
    var numbersTemp = numbers
    var outputString = ""
    while !numbersTemp.isEmpty {
        outputString.append(String(numbersTemp.remove(at: 0)) + delimiter)
    }
    outputString.removeLast()
    return outputString
}
print(cat(delimiter: ":", numbers: 1,2,3,4,5,6,7,8,9))
print(cat(numbers: 1,2,3,4,5,6,7,8,9))

/*
 3. The Fibonacci numbers is a series of numbers that can be defined recursively, i.e., n(1)=1, n(2)=1, n(i+1) = n(i) + n(i-1) for i>=2. Given an integer n>=1, Implement an efficient algorithm/function to calcuate the n^{th} Fibonacci number. Your algorithm should be able to calculate n=90.
 */
func calculateFibonacci(n: Int) {
    var num1 = 0
    var num2 = 1
    for _ in 2...n {
        let num = num1 + num2
        num1 = num2
        num2 = num
    }
    print("result = \(num2)")
}
calculateFibonacci(n: 90)
/*
 4  Create a structure to store the information of a student. The structure needs to be able to store the following information: Student ID (String) Student Name (String) Date of birth (DOB). DOB itself is also a struture containing the year, month, and day. Add a computed property named age to the student structure so that you can obtain the age of a student. Create an instance of the structure and print out the age of the student.
 */
import UIKit

struct student{
    let studentID : String
    let studentName : String
    let dateOfBirth : DOB
}

struct DOB {
    let month :Int
    let day : Int
    let year : Int
    let age : Int
}
/*
 func calulateAge(month: Int, day: Int, year: Int) -> Int{
 var dateComponents = dateComponent()
 dateComponents.month = this.month
 let month = dateComponent(this.month)
 let day = dateComponent(this.day)
 let year = dateComponent(this.year)
 
 let date2 = Calendar.current
 var DOBDay = Calendar.Component.day(.Day)
 
 }
 */
/*
 5 Create a Vehicle class that contains the following properties: model, doors, color – either red, blue, or white,  wheels. Create a subclass of Vehicle named MotorVehicle. Add an additional property to it named licensePlate. Create a subclass of Vehicle named Bicycle. Create a subclass of MotorVehicle named Car. Create the following initializers: an initializer that sets doors to 2, an initializer that initializes the model, doors, color, and wheels, a convenience initializer that initializes licensePlate and calls the initializer that initializes the model, doors, color, and wheels.
 */

class Vehicle{
    let model : String
    let doors : Int
    let color : Color
    let wheels : Int
    
    init(model: String, doors: Int, color: Color, wheels: Int){
        self.model = model
        self.doors = doors
        self.color = color
        self.wheels = wheels
    }
    init(model: String, color: Color, wheels: Int){
        self.model = model
        self.doors = 2
        self.color = color
        self.wheels = wheels
    }
}
enum Color{
    case RED,BLUE,WHITE
    func toString(color: Color) -> String {
        switch color {
        case .RED:
            return "red"
        case .BLUE:
            return "blue"
        case .WHITE:
            return "white"
        }
    }
}

class MotorVehicle : Vehicle{
    let licensePlate : String
    init(licensePlate: String, model: String, color: Color, wheels: Int){
        self.licensePlate = licensePlate
        super.init(model: model, color: color, wheels: wheels)
    }
    init(licensePlate: String, model: String, doors: Int, color: Color, wheels: Int){
        self.licensePlate = licensePlate
        super.init(model: model, doors: doors, color: color, wheels: wheels)
    }
}
class Bicycle : Vehicle{
    
}
class Car: MotorVehicle {
    
}
let cars =  Car(licensePlate: "2213", model: "meme", doors: 3, color: Color.BLUE, wheels: 4)
let fve = Bicycle(model: "w", color: Color.BLUE, wheels: 2)
