import UIKit

let upperApple = "APPLE"

let lowerApple = "apple"

upperApple.lowercased() == lowerApple

upperApple.compare(lowerApple, options: [.caseInsensitive]) == ComparisonResult.de
