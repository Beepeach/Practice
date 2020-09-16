import UIKit

//: # Optional


var num: Int? = nil
//print(num!)


//Optional binding

if let num = num {
    print(num)
} else {
    print("empty")
}



var str: String? = "str"
guard let str = str else {
//    str
    fatalError()
}
str



let a: Int? = 12
let b: String? = "str"

if let num = a, let str = b, str.count > 2 {
    
    //a, b는 아직도 옵셔널임을 주의
    print(a, b)
    print(num, str)
    
}
