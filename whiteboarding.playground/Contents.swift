/////String Reversal
//func reverseString(_ str: String) -> String {
//    return String(str.reversed())
//}
//
//func reverseString1(_ str: String) -> String {
//    var reversedStr = [Character]()
//
//    str.forEach { reversedStr.insert($0, at: 0) }
//
//    //character sequence initializer of string
//    return String(reversedStr)
//}
//
//func reverseString2(_ str: String) -> String {
//    return str.map { $0 }.reduce("") { String($1) + String($0) }
//}
//
//reverseString2("Jenny")
//
/////Palindrome
//func isPalindrome(str: String) -> Bool {
//    return str == String(str.reversed())
//}
//
//func isPalindrome1(str: String) -> Bool {
//    let length = str.count / 2
//    for i in 0..<length {
//        print(i)
//        let start = str.index(str.startIndex, offsetBy: i)
//        let end = str.index(str.endIndex, offsetBy: (-(i + 1)))
//
//        if str[start] != str[end] {
//            print("Start:", str[start])
//            print("End:", str[end])
//            return false
//        }
//    }
//    return true
//}
//
//func isPalindrome2(str: String) -> Bool {
//    guard str.count >= 2 else { return true }
//
//    let end = str.index(str.endIndex, offsetBy: -1)
//
//    if str[str.startIndex] == str[end] {
//        let start = str.index(str.startIndex, offsetBy: 1)
//
//        print(str[start..<end])
//
//        return isPalindrome2(str: String(str[start..<end]))
//    }
//
//    return false
//}
//
//print(isPalindrome2(str: "tacocat"))

/////Integer Reversal
//func reverseInt(_ int: Int) -> Int {
//
//    let reversed = abs(int)
//    if int < 0 {
//        return (-Int(String(String(reversed).reversed()))!)
//    } else {
//        return Int(String(String(reversed).reversed()))!
//    }
//
//}
//
//func reverse(_ x: Int) -> Int {
//    var remain = abs(x)
//    var reverseNum = 0
//    while remain != 0 {
//        reverseNum = (reverseNum * 10) + (remain % 10)
//        print("reverseNum:", reverseNum)
//        remain = remain/10
//        print("remain:", remain)
//    }
//    if reverseNum > Int32.max {
//        return 0
//    }
//    return x > 0 ? reverseNum : -reverseNum
//}
//
//reverse(98)

///MaxChar
func maxChar(in string: String) -> String {
    var dict = [Character : Int]()
    var max = 0
    var maxChar = ""
    
    for char in string {
        if dict[char] == nil {
            dict[char] = 1
        } else {
            dict[char]! += 1
        }
    }
    
    for (key, value) in dict {
        if value > max {
            max = value
            maxChar = String(key)
        }
    }
    
    return maxChar
}

maxChar(in: "Jenny")
