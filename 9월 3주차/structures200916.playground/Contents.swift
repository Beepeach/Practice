import UIKit
import Foundation


//: # Structure

struct Person {
    var name: String
    var age: Int
    
    func speak() {
        print("Hello")
    }
}


let p = Person(name: "Steve", age: 50)
p.name
p.age

p.speak()


//: # Class

class ClassPerson {
    var name = "John Doe"
    var age = 0
    
    func speak() {
        print("Hi")
    }
}

let cP = ClassPerson()
cP.name
cP.age
cP.speak()



//: # Initialize

let str = "123"
let num = Int(str)

class Position {
    var x: Double
    var y: Double
    
    init() {
        x = 0.0
        y = 0.0
    }
    
    init(value: Double) {
        x = value
        y = value
    }
}

let a = Position()

a.x
a.y

let b = Position(value: 100)

b.x
b.y




//: # Value Type vs Reference Type

struct PositionValue {
    var x = 0.0
    var y = 0.0
}


class PositionObject {
    var x = 0.0
    var y = 0.0
}


var v = PositionValue()


var o = PositionObject()

var v2 = v
var o2 = o


v2.x = 12
v2.y = 34

v
v2




o2.x = 12
o2.y = 34

o
o2






//: # Identity Operator


class A {
    
}

let a1 = A()
let b1 = a1
let c1 = A()



a1 === b1
a1 !== b
a1 !== c1




//: # Nested Type


class One {
    struct Two {
        enum Three {
            case aenum
            
            class Four {
                
            }
        }
    }
    
    var a = Two()
}


let two = One.Two()

//Four의 인스턴스
let four = One.Two.Three.Four()

//열거형저장
let threeAenum: One.Two.Three = .aenum
