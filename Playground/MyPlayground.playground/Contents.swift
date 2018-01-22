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
var possibleInt = Int(myStr) //it assumes it is an optional Int

var ratingList = [ "poor", "fine", "good", "excellent"]

ratingList[0]
ratingList[0] = "bad"


var emptyArray = [String]()

var test : Bool = true

let t = (first:1, second:"First")

let temp = t.0
let temp2 = t.first
