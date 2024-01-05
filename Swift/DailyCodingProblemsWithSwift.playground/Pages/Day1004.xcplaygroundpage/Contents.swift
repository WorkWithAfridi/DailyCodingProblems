//This problem was asked by Goldman Sachs.
//
//Given a list of numbers L, implement a method sum(i, j) which returns the sum from the sublist L[i:j] (including i, excluding j).
//
//For example, given L = [1, 2, 3, 4, 5], sum(1, 3) should return sum([2, 3]), which is 4.
//
//You can assume that you can do some pre-processing. sum() should be optimized over the pre-processing step.

class SumMap{
    var list: [Int] = []
    var sumAtIndexMap: [Int:Int] = [:]
    var sum = 0
    var count = 0
    
    func addInt(integer: Int) {
        list.append(integer)
        sum += integer
        sumAtIndexMap[count] = sum
        count += 1
    }
    
    func getSum(i: Int, j: Int) -> Int {
        print(sumAtIndexMap)
        if i < list.count, j < list.count {
            var ithVal : Int = (sumAtIndexMap[j] ?? 0)
            var jthVal : Int = (sumAtIndexMap[i] ?? 0)
            print("ithVal: \(ithVal)")
            print("jthVal: \(jthVal)")
            return ithVal - jthVal
        }
        return 0
    }
}


var sumMap: SumMap = SumMap()

sumMap.addInt(integer: 1) // 0
sumMap.addInt(integer: 2) // 1
sumMap.addInt(integer: 3) // 2
sumMap.addInt(integer: 4) // 3
sumMap.addInt(integer: 5) // 4

var sumVal = sumMap.getSum(i: 2, j: 3)
print("SumVal is \(sumVal)")
