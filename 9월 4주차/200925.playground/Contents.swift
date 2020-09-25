import UIKit
import Foundation

struct Person {
    let name: String = "John Doe"
    var age: Int = 33
}

var p = Person()
p.name
p.age

p.age = 30


// Lazy stored properties

struct Image {
    init() {
        print("new image")
    }
}


struct BlogPost {
    let title: String = "Title"
    let content: String = "Content"
    lazy var attachment: Image = Image()
    
    let date: Date = Date()
    
    lazy var formattedDate: String = {
        let f = DateFormatter()
        f.dateStyle = .long
        f.timeStyle = .medium
        return f.string(from: date)
    }()
}

var post = BlogPost()
post.attachment


class PersonClass {
    var name: String
    var yearOfBirth: Int
    
    init(name: String, year: Int) {
        self.name = name
        self.yearOfBirth = year
    }
    
    var age: Int {
            let calendar = Calendar.current
            let now = Date()
            let year = calendar.component(.year, from: now)
            return year - yearOfBirth
//        set {
//            let calendar = Calendar.current
//            let now = Date()
//            let year = calendar.component(.year, from: now)
//            yearOfBirth = year - newValue
//        }
    }
}

let p1 = PersonClass(name: "hee", year: 2002)
p1.age

p1.yearOfBirth


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


let s = Size()
s.width = 123




class Math {
    static let pi = 3.14
}

let m = Math()
Math.pi


enum Weekend: Int {
    case sunday = 1, monday, tuesday, wendnesday, thursday, friday, saturday
    
    static var today: Weekend {
        let cal = Calendar.current
        let today = Date()
        let weekday = cal.component(.weekday, from: today)
        return Weekend(rawValue: weekday)!
    }
}

Weekend.today



struct SizeValue {
    var width = 0.0
    var height = 0.0
    
//    func calcArea() -> Double {
//        return width * height
//    }
//
//    var area: Double {
//        return calcArea()
//    }
//
//    func update(width: Double, height: Double) {
//        self.width = width
//        self.height = height
//    }
//
//    func doSomething() {
//        let c = { self.width * self.height }
//    }
//
//    static let unit = ""
//
//    static func doSomething() {
//        //self.width
//        self.unit
//    }
    
    mutating func reset(value: Double) {
//        width = value
//        height = value
        self = SizeValue(width: value, height: value)
    }
        
}
