//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var optionalStr : String?

var optionalInt : Int? = 9

let actualInt : Int = optionalInt!

//Does not work! see below
//let actualString : String = optionalStr!

if let actualString = optionalStr {
    
}

var myStr = "7"
var possibleInt = Int(myStr) //it assumes it is an optional Int
