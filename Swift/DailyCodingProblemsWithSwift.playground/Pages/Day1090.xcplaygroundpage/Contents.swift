//Given a list of words, f
//ind all pairs of unique indices such that
//the concatenation of the two words is a palindrome.
//
//For example,
//given the list ["code", "edoc", "da", "d"], return [(0, 1), (1, 0), (2, 3)].

var givenList: [String] = ["code", "edoc", "da", "d"]

func findPalindromicIndices(_ list: [String]) -> [[Int]] {
    var res : [[Int]] = []
    for(index, value) in list.enumerated(){
        for(iindex, ivalue) in list.enumerated(){
            var concatenatedString = "\(value)\(ivalue)"
            var reversedConcatenatedString = String(concatenatedString.reversed())
            if concatenatedString == reversedConcatenatedString && value != ivalue {
                res.append([index, iindex])
            }
        }
    }
    return res
}

var resultingList : [[Int]] = findPalindromicIndices(givenList)
print("For list: \(givenList), palindromicIndicies are: \(resultingList)")
