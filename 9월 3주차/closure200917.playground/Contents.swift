import UIKit
//
//let names = ["Junhee", "Jundol", "Seoeun", "Seosun"]
//
//
//func backword(first: String, second: String) -> Bool {
//    print("\(first) \(second) 비교중")
//    return first > second
//}
//
////let reversed = names.sorted(by: backword(first:second:))
////print(reversed)
//
////let reversd = names.sorted(by: { (first: String, second: String) -> Bool in
////    return first > second
////})
//
//
//
////let reversd = names.sorted { $0 > $1 }
//
//
//let reversd = names.sorted(by: >)
//
//
//
//
////중복이 안되는 숫자 6개를 가지는 배열을 만든다.
//
////빈 문자열 생성
//var list: [Int] = []
//
////for문은 반복을 동적으로 지정할 수 없다.
////for num in 0...5 {
////
////}
//
//
//while list.count < 7 {
//    let randomNum = Int.random(in: 1 ... 45)
//
//    if !list.contains(randomNum) {
//        list.append(randomNum)
//    }
//}
//
//list.sorted()
//
////
////var list = [Int]()
////
////while list.count < 7 {
////    let num = Int.random(in: 1...45)
////
////
////    //1. 리스트에  존재하는 숫자인지?
////    if !list.contains(num) { //존재하지 않는 숫자면
////        list.append(num) //배열에 넣기
////    }
////}




var list = ["Orange", "Banana", "Apple", "Melon"]

 list.sort(by: {(lhs: String, rhs: String) -> Bool in
    return lhs < rhs
})


list.sort(by: {(lhs, rhs) in
   return lhs < rhs
})

list.sort(by: {
   return $0 < $1
})

list.sort(by: {
   $0 < $1
})

list.sort(by:) {
    $0 < $1
 }

list.sort {
    $0 < $1
 }
print(list)
// 글로벌 스코프에서 클로저는 단독으로 사용이 불가능 합니다.
//{ (lhs: Int, rhs: Int) -> Bool in
//    lhs > rhs
//}

//// 상수에 저장했습니다.
//let compareClosure = { (lhs: Int, rhs: Int) -> Bool in
//    lhs > rhs
//}
//
//compareClosure(lhs: 5, rhs: 7)
