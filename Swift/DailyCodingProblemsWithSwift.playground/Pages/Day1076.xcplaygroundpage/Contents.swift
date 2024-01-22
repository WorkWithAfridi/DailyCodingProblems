//This problem was asked by Squarespace.
//
//Write a function, add_subtract, which alternately adds and subtracts curried arguments. Here are some sample operations:
//
//add_subtract(7) -> 7
//
//add_subtract(1)(2)(3) -> 1 + 2 - 3 -> 0
//
//add_subtract(-5)(10)(3)(9) -> -5 + 10 - 3 + 9 -> 11


class AddSubtract{
    var previousIndexIsPositive: Bool = true
    var total: Int = 0
    
    func addSubtract(listOfValues: [Int]) -> Int {
        total = 0
        if(listOfValues.isEmpty) { return 0 }
        let firstValue = listOfValues.first ?? 0
        total += firstValue
        
        if firstValue > 0 {
            previousIndexIsPositive = true
        } else {
            previousIndexIsPositive = false
        }
        
        var tempList = listOfValues
        
        tempList.removeFirst()
        
        tempList.forEach { value in
            print("FOR CURRENT VALUE: \(value)")
            if previousIndexIsPositive {
                total -= abs(value)
            } else {
                total += abs(value)
            }
            previousIndexIsPositive.toggle()
            print("TOTAL IS: \(total)")
        }
        
        return total
    }
}


var addSubClass = AddSubtract()

var output : Int = addSubClass.addSubtract(listOfValues: [-5, 10, 3, 9])

print("FINAL OUTPUT IS: \(output)")

