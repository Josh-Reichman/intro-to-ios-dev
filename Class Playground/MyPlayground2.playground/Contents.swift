//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Feb 19//
extension Double{
    var km : Double {return self*1000.0}
    var m : Double {return self}
    var cm : Double {return self/10.0}
    var ft : Double {return self*3.28084}
}

let length = 3.0
3.km
3.m
3.cm
3.ft

length.km
length.m
length.cm
length.ft
/////////
struct Size {
    var width = 0.0
    var height = 0.0
}
struct Point {
    var x = 0.0
    var y = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
}

let memberwiseRect = Rect(origin: Point( x: 2.0, y:2.0), size: Size(width: 5.0, height: 4.0))

extension Rect {
    init(center: Point, size: Size) {
        let originX = center.x - size.width/2
        let originY = center.y - size.height/2
        self.init(origin: Point(x: originX, y: originY),size: size)
    }
}

let centerRect = Rect(center: Point(x:4.0, y:4.0), size: Size(width: 3.0, height: 3.0))
/////////
extension Int {
    func repetition(task: () -> Void){
        for _ in 0..<self{
            task()
        }
    }
}
3.repetition {
    print("Hello")
}
extension Int{
    mutating func square() {
        self = self * self
    }
}
var someint = 5
someint.square()
someint

//1234566

extension Int {
    subscript(digitIndext: Int) -> Int{
        var decimalBase = 1
        for _ in 0..<digitIndext{
            decimalBase *= 10
        }
        return (self / decimalBase) % 10
    }
}
12343566[0]
12343566[3]

protocol SomeProtocol{
    func simpleDescription() -> String
}
extension Int: SomeProtocol{
    func simpleDescription() -> String {
        return "Int value of \(self)"
    }
}
let tmp = 3
tmp.simpleDescription()

extension Int{
    enum Kind {
        case negative,zero,positive
    }
    var kind: Kind{
        switch self {
        case 0:
            return .zero
        case let x where x > 0:
            return .positive
        default:
            return .negative
        }
    }
}

func printIntKinds(_ numbers: [Int]){
    for number in numbers{
        switch number.kind{
        case .negative:
            print ("- ", terminator: "")
        case .zero:
            print ("0 ", terminator: "")
        case .positive:
            print ("+ ", terminator: "")
    }
    }
}
printIntKinds([2,-4,345,0,-4])
