// This problem was asked by Microsoft.

// Given a dictionary of words and a string made up of those words (no spaces),
// return the original sentence in a list. If there is more than one possible reconstruction,
// return any of them. If there is no possible reconstruction, then return null.

// For example, given the set of words 'quick', 'brown', 'the', 'fox',
// and the string "thequickbrownfox", you should return ['the', 'quick', 'brown', 'fox'].

// Given the set of words 'bed', 'bath', 'bedbath', 'and', 'beyond',
// and the string "bedbathandbeyond", return either ['bed', 'bath', 'and', 'beyond]
// or ['bedbath', 'and', 'beyond'].

List<String> getOriginalSentence(List<String> givenList, String givenString) {
  int pointerI = 1;
  int pointerJ = 0;
  List<String> currentList = [];
  List<String> tempList = [];
  bool isReversing = false;
  while (pointerI <= givenString.length) {
    tempList.clear();
    String subStringIJ = givenString.substring(pointerJ, pointerI);
    print("subStringIJ: $subStringIJ");
    List<String> filterList = givenList.where((e) => e.startsWith(subStringIJ)).toList();

    print("filterList: $filterList");

    if (filterList.isNotEmpty) {
      isReversing = false;
      tempList = [...currentList, filterList.first].toSet().toList();
      print("tempList: $tempList");
      String tempStr = tempList.join("");
      print("TempStr :" + tempStr);
      if (givenString.startsWith(tempStr)) {
        currentList = tempList.toSet().toList();
      }
      pointerI = pointerI + 1;
    } else {
      if (isReversing == false) {
        pointerI = pointerI - 1;
      }
      isReversing = true;
      pointerJ = pointerJ + 1;
    }

    print("Current List: $currentList");
    print("------------------");
  }

  return currentList;
}

main() {
  // List<String> givenList = [
  //   "quick",
  //   "brown",
  //   "the",
  //   "fox",
  // ];

  // String givenString = "thequickbrownfox";

  // List<String> resultingList = getOriginalSentence(givenList, givenString);

  // print("resultingList: $resultingList");

  List<String> givenListTwo = [
    "bed",
    "bath",
    "bedbath",
    "and",
    "beyond",
  ];

  String givenStringTwo = "bedbathandbeyond";

  List<String> resultingListTwo = getOriginalSentence(givenListTwo, givenStringTwo);

  print("resultingListTwo: $resultingListTwo");
}
