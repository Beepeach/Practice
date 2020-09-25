import Foundation
import UIKit

let str = "Hello Swift"

//str = "Hello Swift5.0"

let newStr = str.appending("5.0")

var mutableStr = "Hello, Swift"
mutableStr.remove(at: mutableStr.startIndex)
print(mutableStr)

//
//if let elloRange = mutableStr.range(of: "ello") {
//   let removedRange = mutableStr.removeSubrange(elloRange)
//}
//print(removedRange)


mutableStr = "Hello, Swift"
mutableStr[mutableStr.startIndex]
mutableStr[mutableStr.index(before: mutableStr.endIndex)]
mutableStr[mutableStr.index(mutableStr.startIndex, offsetBy: 4)]

mutableStr.range(of: ",")

mutableStr.count
mutableStr.lowercased()
mutableStr.uppercased()

"Apple".caseInsensitiveCompare("apple") == .orderedSame
mutableStr.appending("5.0")

mutableStr.lowercased().contains("swift")


if let range = mutableStr.range(of: "swift", options: [.caseInsensitive]) {
    mutableStr[range]
    mutableStr.replaceSubrange(range, with: "SWIFT6.0")
    let swiftStr = mutableStr.replacingOccurrences(of: "swift6.0", with: "Swfit5.0", options: [.caseInsensitive])
}

mutableStr


let a = "\u{D55C}\u{AE00}"
//조합형
let b = "\u{1112}\u{1161}\u{11AB}\u{1100}\u{1173}\u{11AF}"


a == b
a.compare(b, options: [.literal]) == .orderedSame

let saySwift = "Hello!! owl Programming"

if let range = saySwift.range(of: "o") {
    saySwift.distance(from: saySwift.startIndex, to: range.lowerBound)
}

if let range = saySwift.range(of: "o", options: [.backwards]) {
    saySwift.distance(from: saySwift.startIndex, to: range.lowerBound)
}


saySwift.hasPrefix("H")
saySwift.hasSuffix("ing")



let f10 = "file10.txt"
let f9 = "file9.txt"

f10 > f9

f10.compare(f9,options: [.numeric]) == .orderedDescending



let c1 = "Cafe"
let c2 = "Café"

c1.compare(c2) == .orderedSame
c1.compare(c2, options: [.diacriticInsensitive]) == .orderedSame


let name = "조준희.     "
name.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)

var myCharSet = CharacterSet(charactersIn: ".")
name.trimmingCharacters(in: CharacterSet.whitespaces)


let arrays = ["안녛", "반가워", "ㅎㅎㅎㅎ"]
arrays.joined(separator: "!")

let str3 = "가다나라가나마!밪밥자ㅏㅏ만다라ㅏ마!사마"
str3.components(separatedBy: "!")
