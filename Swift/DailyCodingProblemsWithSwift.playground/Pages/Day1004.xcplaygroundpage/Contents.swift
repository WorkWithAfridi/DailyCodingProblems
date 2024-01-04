//This problem was asked by Goldman Sachs.
//
//Given a list of numbers L, implement a method sum(i, j) which returns the sum from the sublist L[i:j] (including i, excluding j).
//
//For example, given L = [1, 2, 3, 4, 5], sum(1, 3) should return sum([2, 3]), which is 4.
//
//You can assume that you can do some pre-processing. sum() should be optimized over the pre-processing step.

var sumAtIndexMap: [Int:Int] = [:]
var givenList : [Int] = [1, 2, 3, 4, 5]

func getSumMap(list: [Int]) -> [Int: Int] {
    var sumMap: [Int:Int]  = [:]
    var sum = 0;
    for index in 0...(list.count - 1) {
        print(index)
        sum += list[index]
        print(sumMap)
        sumMap[index] = sum
    }
    return sumMap
}

func getSum(i: Int, j: Int, optMap: [Int: Int]) -> Int {
    return (optMap[j] ?? 0) - (optMap[i] ?? 0)
}

var optMap = getSumMap(list: givenList)

var sumVal = getSum(i: 2, j: 4, optMap: optMap)

print("SumVal is \(sumVal)")
