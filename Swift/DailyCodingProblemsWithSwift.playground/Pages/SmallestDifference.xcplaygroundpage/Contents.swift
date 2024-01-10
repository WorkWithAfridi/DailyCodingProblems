
// Q: Smallest Difference - Algo Expert - Medium


var listOne: [Int] = [-1, 5, 10, 20, 28, 3]
var listTwo: [Int] = [26, 134, 135, 15, 17]

//print(listOne.sorted())

print("Q: Smallest Difference - Algo Expert - Medium")
func getSmallestDifference(lOne: [Int], lTwo: [Int]) -> [Int]{
    lOne.sorted()
    lTwo.sorted()
    
    var idxOne = 0
    var idxTwo = 0
    
    var smallest: Int = Int.max
    var current: Int = Int.max
    
    var smallestPair: [Int] = []
    
    while idxOne < lOne.count && idxTwo < lTwo.count  {
        var firstN: Int = lOne[idxOne]
        var secondN: Int = lTwo[idxTwo]
        
        if firstN < secondN {
            current = secondN - firstN
            idxOne += 1
        } else if secondN < firstN {
            current = firstN - secondN
            idxTwo += 1
        } else {
            return [firstN, secondN]
        }
        
        if smallest > current {
            smallest = current
            smallestPair = [firstN, secondN]
        }
        
    }
    return smallestPair
}


var smallestPair = getSmallestDifference(lOne: listOne, lTwo: listTwo)
print("Smallest pair is : \(smallestPair)")
