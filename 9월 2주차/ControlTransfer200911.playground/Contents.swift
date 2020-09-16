import UIKit
import Foundation

//: # Control Transfer Statement

//return, break, continue


let a = 0
switch a { //fall through
case 1:
    print(1)
default:
    break
}

//위치가 중요
//for i in 2...99 {
//    print(i)
//
//    if i > 9 {
//        continue
//    }
//
//    for j in 1...99 {
//        print("       ",j)
//
//        if j > 9 {
//            continue
//        }
//
//        print("\(i) * \(j) = \(i * j)")
//    }
//}



//for i in 2...99 {
//
//    for j in 1...99 {
//        if j > 9 {
//            break
//        }
//        print("\(i) * \(j) = \(i * j)")
//    }
//    if i > 9 {
//          break
//      }
//}




for num in 1...100 {
    if num % 2 != 0 {
        continue
    }
    print(num)
}

//왜 switch에선 continue를 못쓸까?
//continue는 마지막에 쓰면 의미가 없다

for num in 1...100 {
    if !num.isMultiple(of: 2) {
        continue
    }
    print(num)
}

// 내가 작성한 코드

for num in 1...100 {

    if num.isMultiple(of: 5) && num.isMultiple(of: 30) {
        break
    } else if num.isMultiple(of: 3) || num.isMultiple(of: 6) {
        continue
    } else if num.isMultiple(of: 2){
        print("\(num) : Even")
    } else {
        print("\(num) : Odd")
    }

}

//Unit test




for i in 1...5 {
    print("OUTER",i)
    
    for j in 1...5 {
        print("       INNER", j)
        
        if j.isMultiple(of: 3) {
            break
        }
    }
    break
}
print("Done")


for i in 1...5 {
    print("OUTER",i)
    
    var shouldStop = false
    
    for j in 1...5 {
        print("       INNER", j)
        
        if j.isMultiple(of: 3) {
            shouldStop = true
            break
        }
    }
    
    if shouldStop {
        break
    }
}
print("Done")



//: # Labeled Statement

//switch에서도 사용되기도 한다.
//이름짓기: 공식문서에서는 전체 소문자
//UpperCamelCase로는 절대 작성하지말자 헷갈린다
OUTER: for i in 1...5 {
    print("OUTER",i)
    
    for j in 1...5 {
        print("       INNER", j)
        
        if j.isMultiple(of: 3) {
            break OUTER
        }
    }
}
print("Done")
