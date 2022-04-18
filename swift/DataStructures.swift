// Strings

extension String {
    var isAlphanumeric: Bool {
        return !isEmpty && range(of: "[^a-zA-Z0-9]", options: .regularExpression) == nil
    }
}

let aString:String = "123"
var astring:String = "abc"


aString.isAlphanumeric // Assert True
// Arrays

let anArray:[Element] = [] // also = let anArray:[Element]() 
var array:[Element] = [] // also = var Array:[Element]() = Array(Element)

array.append(Element)
array.popLast()
array.popFirst()
array.removeFirst()
array.removeLast()
array.joined()

array[0] = "Start"

// Sets

let aSet:Set<Element> = [] // also = let aSet:<Element>() = Set(Element)
var set:Set<Element> = [] 

set.insert(Element)
set.remove(Element)
//Dictionaries/Hash Table

let aDict:[Character:Int] = [:] // also = let aDict:[Character:Int]()
var dict:[Character:Int] = [:] // also = var Dict:[Character:Int]()

func incrementValue(for:Character) {
    if let val = dict[for] {
        dict[for] = val + 1
    } else {
        dict[for] = 1
    }
}
func setValue(value:Int, for:Character) {
    dict[for] = value
}