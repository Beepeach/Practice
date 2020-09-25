import UIKit

var str = "Hello, playground"


let data = ("JoJunHee", 179.2, 28)

var anotherData = data

anotherData.1 = 180
print(anotherData)


let namedData = (name: "Jojunhee", height: 179.2, age: 28)

namedData.name
namedData.height
namedData.age


let (name, height, age) = namedData

name
height
age


let resolution = (3840.0, 2160.0)

if resolution.0 == 3840 && resolution.1 == 2160 {
    print("4K")
}


switch resolution {
case (3840...4096,2160):
    print("44K")
case (_, 1080):
    print("1080")
case let(w, h) where w / h == 16.0 / 9.0:
    print(16/9)
default:
    break
}
var nsstr: NSString = "str"

let swiftStr: String = nsstr as String

nsstr = swiftStr as NSString
