import UIKit

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

class Circle {
    static let pi = 3.14
    var radius = 0.0
    
    func getArea() -> Double {
        return radius * radius * Circle.pi
    }
    
    class func printPi() {
        print(pi)
    }
}

Circle.printPi()

class StrokeCircle: Circle {
    override static func printPi() {
        print(pi)
    }
}



let list = ["A", "B", "C"]
list[0]


class List {
    var data = [1, 2, 3]
    
    subscript(index: Int) -> Int {
        get {
            return data[index]
        }
        
        set {
            data[index] = newValue
        }
    }
}


var l = List()
l[0]

l[1] = 123




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



@dynamicMemberLookup
struct Person {
    var name: String
    var address: String
    
    subscript(dynamicMember member: String) -> String {
        switch member {
        case "nameKey":
            return name
        case "addressKey":
            return address
        default:
            return "n/a"
        }
    }
}

let p = Person(name: "hee", address: "집")

p.name
p.address

p[dynamicMember: "nameKey"]
p[dynamicMember: "addressKey"]

p.nameKey
p.addressKey

p.missingKey

