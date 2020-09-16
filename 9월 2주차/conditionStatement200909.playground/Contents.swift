import UIKit


let a = 101

switch a {
case var x where x > 100:
    x = 200
    print(x)
default:
    break
}

let pt = (1, 2)

switch pt {
case let (x, y):
    print(x, y)
case (let x, let y):
    print(x, y)
case (let x, var y):
    print(x ,y)
case (let x, _):
    print(x)
}







let b = 1
switch b {
case 0 ... 10:
    print("0 ~ 10")
default:
    break
}
