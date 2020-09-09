//
//let num = 1
//
//switch num {
//case 1:
//    print("one")
//case 2, 3:
//    print("two or three")
//default:
//    break
//}
//
//

let temperature = 10

switch temperature {
case ..<10:
    print("cold")
case 10...20:
    print("cool")
case 11...27:
    print("warm")
case 28... :
    print("hot")
default:
    break
}




let attempts = 10

switch attempts {
case ..<10:
    print("warning")
case 10:
    print("waring")
    fallthrough
default:
    print("reset")
}
