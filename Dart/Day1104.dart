// Given a mapping of digits to letters (as in a phone number), and a digit string,
// return all possible letters the number could represent. You can assume each valid number in the mapping is a single digit.

// For example if {“2”: [“a”, “b”, “c”], 3: [“d”, “e”, “f”], …} then “23” should
// return [“ad”, “ae”, “af”, “bd”, “be”, “bf”, “cd”, “ce”, “cf"].

void main(List<String> args) {
  Map<int, List<String>> myMap = {
    2: ["a", "b", "c"],
    3: ["d", "e", "f"],
    4: ["g", "h", "i"],
    5: ["j", "k", "l"],
    6: ["m", "n", "o"],
    7: ["p", "q", "r", "s"],
    8: ["t", "u", "v"],
    9: ["w", "x", "y", "z"],
  };
  List<String> myString = getLetterCombinations(digits: "23", myMap: myMap);

  print(myString);
}

List<String> getLetterCombinations({
  required String digits,
  required Map<int, List<String>> myMap,
}) {
  List<int> digitsList = digits.split("").map(int.parse).toList();
  int multiplier = digitsList.removeAt(0);

  List<String> multiplierStrList = myMap[multiplier]!;

  Map<int, List<String>> requiredMap = {
    for (int key in digitsList)
      if (myMap.containsKey(key)) key: myMap[key]!,
  };

  Set<String> result = multiplierStrList.expand((x) => requiredMap.values.expand((list) => list.map((y) => x + y))).toSet();

  return result.toList();
}
