// Given an array of integers where every integer occurs three times except for one integer,
// which only occurs once, find and return the non-duplicated integer.

// For example, given [6, 1, 3, 3, 3, 6, 6], return 1. Given [13, 19, 13, 13], return 19.

func findSingleOccurrenceItem(myList: [Int]) -> Int? {
    var occurrenceCountMap : [Int: Int] = [:]
    myList.forEach { num in
        occurrenceCountMap[num] = (occurrenceCountMap[num] ?? 0) + 1
    }
    for (key, value) in occurrenceCountMap {
        if value == 1 {
            return key
        }
    }
    return nil
}

var givenList :[Int] = [6, 1, 3, 3, 3, 6, 6]

var result : Int? = findSingleOccurrenceItem(myList: givenList)

if result == nil {
    print("No single occurrence item found")
} else {
    print("\(result!) is the single occurrence item in the list")
}
