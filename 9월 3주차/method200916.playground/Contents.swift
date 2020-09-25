import UIKit
import Foundation



//: # method


class Sample {
    var data = 0
    static var sharedData = 123
    
    func doSomething() {
        print(data)
        Sample.sharedData
    }
    
    func call() {
        doSomething()
    }
    
}


let a = Sample()
a.data
a.doSomething()
a.call()


struct Size {
    var width = 0.0
    var height = 0.0
    
    mutating func enlarge() {
        width += 1.0
        height += 1.0
    }
}


var s = Size()

s.enlarge()


//: # Type Method



class Circle {
    static let pi = 3.14
    var radius = 0.0
    
    func getArea() -> Double {
        return radius * radius * Circle.pi
    }
    
    static func printPi() {
        print(pi)
    }
}



//Circle.printPi()
//
//class StrokeCircle: Circle {
//    override static func printPi() {
//        print(pi)
//    }
//}





//: # Subscript

let list = ["A", "B", "C"]
list[0]

class List {
    var data = [1, 2, 3]
    
    subscript(i index: Int) -> Int {
        get {
            return data[index]
        }
        set {
            data[index] = newValue
        }
    }
}


var l = List()
l[i: 0]

l[i: 1] = 123


struct Matrix {
    var data = [[1, 2, 3],
                [4, 5, 6],
                [7, 8, 9]]
    
    subscript(row: Int, col: Int) -> Int {
        return data[row][col]
    }
}


let m = Matrix()
m[0, 0]
//m[0, 10]




//: # Dynamic Member Lookup


