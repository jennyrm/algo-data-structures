///String Reversal
func reverseString(_ str: String) -> String {
    return String(str.reversed())
}

reverseString("Jenny")

func reverseString1(_ str: String) -> String {
    var reversedStr = [Character]()
    
    str.forEach { reversedStr.insert($0, at: 0) }
    
    //character sequence initializer of string
    return String(reversedStr)
}

reverseString2("Jenny")

func reverseString2(_ str: String) -> String {
    return str.map { $0 }.reduce("") { String($1) + String($0) }
}

reverseString2("Jenny")
