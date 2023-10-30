void main(List<String> args) {
  String input = "pwwkew";
  int i_pointer = 0;
  int j_pointer = 0;
  List<String> inputList = input.split("");
  List<String> subString = [];
  List<String> subStringMain = [];
  String jthElement = "";
  while (i_pointer != inputList.length) {
    if (j_pointer < inputList.length) {
      jthElement = inputList[j_pointer];
    }
    if (subString.contains(jthElement)) {
      subStringMain.add(subString.join(""));
      subString.removeAt(0);
      i_pointer++;
    } else {
      subString.add(jthElement);
      j_pointer++;
    }
  }

  subStringMain = subStringMain.toSet().toList();
  subStringMain.sort((a, b) => b.length.compareTo(a.length));

  print(subStringMain);
  print("LongestSubStringWithoutRepeatingChars: ${subStringMain.first}");
  // bruteForce(input);
}

void bruteForce(String input) {
  List<String> inputList = input.split("");
  List<String> listOfSubStrings = [];
  for (int i = 0; i < inputList.length; i++) {
    String currentSubString = inputList[i];
    print("CurrentSubString : $currentSubString");
    for (int j = i + 1; j < inputList.length; j++) {
      String currentJthString = inputList[j];
      if (currentSubString.contains(currentJthString)) {
        print("currentSubStirng contains jthString-> $currentSubString -> $currentJthString");
        // i = j - 1;
        break;
      } else {
        currentSubString += currentJthString;
        print("Adding jth String to currentSubStirng -> $currentJthString -> $currentSubString");
      }
    }
    listOfSubStrings.add(currentSubString);
    print("------------");
  }
  listOfSubStrings = listOfSubStrings.toSet().toList();
  listOfSubStrings.sort((a, b) => b.length.compareTo(a.length));
  print(listOfSubStrings);

  print("LongestSubStringWithoutRepeatingChars: ${listOfSubStrings.first}");
}
