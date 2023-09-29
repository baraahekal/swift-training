import Foundation

func validBraces(_ string: String) -> Bool {
    var check: [Character] = []
    var isLeft: [String: Bool] = [")": true, "]": true, "}": true]
    var reverse: [String: String] = ["(": ")", "[": "]", "{": "}"]

    for char in string {
        if isLeft[String(char), default: false] {
            if check.isEmpty || (check.first != nil && char != Character(reverse[String(check.first!)] ?? "")) {
    return false
}

            check.removeFirst()
            
        } else {
            check.insert(char, at: 0)
        }
    }
    return check.isEmpty
}

