///String Reversal
func reverseString(_ str: String) -> String {
    return String(str.reversed())
}

func reverseString1(_ str: String) -> String {
    var reversedStr = [Character]()
    
    str.forEach { reversedStr.insert($0, at: 0) }
    
    //character sequence initializer of string
    return String(reversedStr)
}

func reverseString2(_ str: String) -> String {
    return str.map { $0 }.reduce("") { String($1) + String($0) }
}

reverseString2("Jenny")

///Palindrome
func isPalindrome(str: String) -> Bool {
    return str == String(str.reversed())
}

func isPalindrome1(str: String) -> Bool {
    let length = str.count / 2
    for i in 0..<length {
        print(i)
        let start = str.index(str.startIndex, offsetBy: i)
        let end = str.index(str.endIndex, offsetBy: (-(i + 1)))
        
        if str[start] != str[end] {
            print("Start:", str[start])
            print("End:", str[end])
            return false
        }
    }
    return true
}

func isPalindrome2(str: String) -> Bool {
    guard str.count >= 2 else { return true }
    
    let end = str.index(str.endIndex, offsetBy: -1)
    
    if str[str.startIndex] == str[end] {
        let start = str.index(str.startIndex, offsetBy: 1)

        print(str[start..<end])
       
        return isPalindrome2(str: String(str[start..<end]))
    }
    
    return false
}

print(isPalindrome2(str: "tacocat"))
