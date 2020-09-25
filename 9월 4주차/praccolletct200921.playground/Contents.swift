import UIKit

var words = [String: String]()

words["A"] = "Apple"
words["B"] = "Bee"

words.count


words["B"] = "Ball"
words

words.updateValue("City", forKey: "C")

words.updateValue("Circle", forKey: "C")


words
words["B"] = nil
words

words["Z"] = nil

words.removeValue(forKey: "A")
words


