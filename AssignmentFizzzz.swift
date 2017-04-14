import Foundation


enum Answer : Equatable {
    
    case fizz
    case buzz
    case fizzBuzz
    case number(Int)
    
    static func == (lhs: Answer, rhs: Answer) -> Bool {
        switch (lhs, rhs) {
        case (.fizz, .fizz), (.buzz, .buzz), (.fizzBuzz, .fizzBuzz):
            return true
        case (.number(let leftNum), .number(let rightNum)):
            return leftNum == rightNum
        case (.fizz, _), (.buzz, _), (.fizzBuzz, _), (.number, _):
            return false
        }
    }
}

func transform(n: Int) -> Answer {
    
    if n % 3 == 0 && n % 5 != 0 {
        return .fizz
    } else if n % 5 == 0 && n % 3 != 0 {
        return .buzz
    } else if n % 5 == 0 && n % 3 == 0 {
        return .fizzBuzz
    } else {
        return (Answer.number(n))
    }
    return Answer.number(n)
}


print(transform(n: 7))
print(transform(n: 5))
print(transform(n: 3))
print(transform(n: 15))



func letsDoThis(input: String) -> String{
    var vowels = "aeiouAEIOU"
    var counter = 0
    var newString: [Character] = []
    
    for i in input.characters {
        if !vowels.characters.contains(i) {
            newString.append(i)
        }else if vowels.characters.contains(i) {
            counter += 1
            if counter % 2 == 0 {
                newString.append(i)
            }
        }
    }
    return String(newString)
}




print(letsDoThis(input: "cupcake"))
print(letsDoThis(input: "bookkeeper"))
print(letsDoThis(input: "Iron Yard"))
