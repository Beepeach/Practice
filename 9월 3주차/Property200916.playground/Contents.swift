import UIKit
import Foundation

//: Stored Propertier



struct Person {
    let name: String = "Jun Hee"
    var age: Int = 28
}


var p = Person()
p.name
p.age

p.age = 30
//p.name = "Jundol"



//: # Lazy Stored Properties


struct Image {
    init() {
        print("new image")
    }
}

struct BlogPost {
    let title: String = "Title"
    let content: String = "Content"
//    let attachment: Image = Image()
    lazy var attachment: Image = Image()
    
    let date: Date = Date()
    
    lazy var formattedDate: String = {
       let f = DateFormatter()
        f.dateStyle = .long
        f.timeStyle = .medium
        return f.string(from: date)
    }()
}

//let post = BlogPost()
var post = BlogPost()
post.attachment




//: # Computed Property


class ComPerson {
    var name: String
    var yearOfBirth: Int
    
    init(name: String, year: Int) {
        self.name = name
        self.yearOfBirth = year
    }
    
    var age: Int {
        get {
            let calender = Calendar.current
            let now = Date()
            let year = calender.component(.year, from: now)
            return year - yearOfBirth
        }
        set {
            let calendar = Calendar.current
            let now = Date()
            let year = calendar.component(.year, from: now)
            yearOfBirth = year - newValue
        }
    }
}

let comP = ComPerson(name: "junhee", year: 2002)
comP.age

comP.age = 50
comP.yearOfBirth

//: # Property Observer


class Size {
    var width = 0.0 {
        willSet {
            print(width, "=>", newValue)
        }
        didSet {
            print(oldValue, "=>", width)
        }
    }
}

var s = Size()
s.width = 123

s.width = 100



//: # Type property



class Math {
    static let pi = 3.14
}

let m = Math()
//m.pi
Math.pi



enum Weekday: Int {
    case sunday = 1, monday, tuesday, wednesday, thrusday, friday, saturday
    
    static var today: Weekday {
        let cal = Calendar.current
        let today = Date()
        let weekday = cal.component(.weekday, from: today)
        return Weekday(rawValue: weekday)!
    }
}

Weekday.today



//: # self & super

class slefSize {
    var width = 0.0
    var height = 0.0
    
    func calcArea() -> Double {
        //self. 생략가능!
        return self.width * self.height
    }
    
    var area: Double {
        //self. 생략가능
        return self.calcArea()
    }
    
    func update(width: Double, height: Double) {
        //self.를 사용하여 속성과 파라미터를 구분해준다,
        self.width = width
        self.height = height
    }
    
    func doSomething() {
        let c = { self.width * self.height}
    }
    
    static let unit = ""
    
    static func doSomething() {
       //self.width
        self.unit
    }
}


//struct slefSize1 {
//    var width = 0.0
//    var height = 0.0
//
//    func calcArea() -> Double {
//        //self. 생략가능!
//        return self.width * self.height
//    }
//
//    var area: Double {
//        //self. 생략가능
//        return self.calcArea()
//    }
//
//    func update(width: Double, height: Double) {
//        //self.를 사용하여 속성과 파라미터를 구분해준다,
//        self.width = width
//        self.height = height
//    }
//
//    func doSomething() {
//        let c = { self.width * self.height}
//    }
//
//    static let unit = ""
//
//    static func doSomething() {
//       //self.width
//        self.unit
//    }
//
//    mutating func reset(value: Double) {
////        width = value
////        height = value
////        self = Size(width)
//    }
//}
