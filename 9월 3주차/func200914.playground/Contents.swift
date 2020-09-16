import UIKit



//: # Function Type


func printHello(with name: String) {
    print("hello, \(name)")
}

let f2: (String) -> () = printHello(with:)

let f3 = printHello(with:)

f3("World")

func add(a: Int, b: Int) -> Int {
    return a + b
}

var f4: (Int, Int) -> Int = add(a:b:)
f4(1, 3)



func add(_ a: Int, with b: Int) -> Int {
    return a + b
}

f4 = add(_:with:)


func swapNumbers(_ a: inout Int, _ b: inout Int) {
    
}
let f5 = swapNumbers(_:_:)


func sum(of numbers: Int...) {
    
}

let f6 = sum(of:)





//: # Nested Function


func outer() -> () -> () {
    func inner() {
        print("inner")
    }
    
    
    
    print("outer")
    
    return inner
}

outer()
//inner()


let f = outer()
f()


