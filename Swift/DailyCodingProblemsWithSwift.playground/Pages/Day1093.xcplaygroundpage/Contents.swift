//Given an array of integers, return a new array where each element in the new array is the number of smaller elements to the right of that element in the original input array.
//
//For example, given the array [3, 4, 9, 6, 1], return [1, 1, 2, 1, 0], since:
//
//There is 1 smaller element to the right of 3
//There is 1 smaller element to the right of 4
//There are 2 smaller elements to the right of 9
//There is 1 smaller element to the right of 6
//There are no smaller elements to the right of 1

var givenList : [Int] = [3,4,9,6,1]

func getNSmallestIntsToTheRight(_ list: [Int]) -> [Int] {
    var newList : [Int] = []
    for(index, value) in list.enumerated(){
        var count: Int = 0
        for i in index..<list.count{
            var iValue = list[i]
            if(iValue < value){
                count += 1
            }
        }
        newList.append(count)
    }
    return newList
}

var newList : [Int] = getNSmallestIntsToTheRight(givenList)
print("Current list is: \(givenList), New list is: \(newList)")
