import Foundation

//Suppose you have a multiplication table that is N by N.
//That is, a 2D array where the value at the i-th row and j-th column is (i + 1) * (j + 1) (if 0-indexed) or i * j (if 1-indexed).
//
//Given integers N and X, write a function that returns the number of times X appears as a value in an N by N multiplication table.

func computeValue(i: Int, j: Int) -> Int {
    print("I = \(i)")
    print("J = \(j)")
    var computedValue : Int = (i + 1) * (j + 1)
    print("Computed Value = \(computedValue)")
    return computedValue
}

//Brute Force
func getTable(N: Int) -> [[Int]]{
    var table: [[Int]] = []
    for i in 0..<N {
        var listOfInts : [Int] = []
        for j in 0..<N {
            var tableValue = computeValue(i: i, j: j)
            if(tableValue == X){
                numberOfTimesXwasComputed += 1
            }
            listOfInts.append(tableValue)
        }
        table.append(listOfInts)
    }
    return table
}

//Solution Two
func getNumberOfTimesXAppears(X: Int, N: Int) -> Int {
    var num : Int = 0
    for k in 1..<N {
        if X % k == 0{
            num += 1
        }
    }
    return num
}

var N = 6
var X = 12
var numberOfTimesXwasComputed = 0

var getComputedTable = getTable(N: N)
print("Computed table \(getComputedTable)")
print("Number of times X: \(X) was computed: \(numberOfTimesXwasComputed)")

var numberOfTimesXwasComputedUsingSolutionTwo = getNumberOfTimesXAppears(X: X, N: N)

print("Number of times X: \(X) was computed, using solution two : \(numberOfTimesXwasComputedUsingSolutionTwo)")
