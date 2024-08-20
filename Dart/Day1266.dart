// This problem was asked by Twitter.

// Given a list of numbers, create an algorithm that arranges them
// in order to form the largest possible integer. For example, given [10, 7, 76, 415],
// you should return 77641510.

main() {
  List<int> givenList = [
    10,
    76,
    415,
    7,
  ];
  String maxNum = getMaxNumBuildInFuncs([...givenList]);

  print("Largest number that can be formed with the given list (${givenList}) is: $maxNum");
}

String getMaxNumCustom(List<int> givenList) {
  givenList.sort();
  givenList = givenList.reversed.toList();
  List<String> givenListStr = givenList.map((e) => e.toString()).toList();
  String maxNum = "";
  String largestNum = givenListStr.first;
  int largestNumIndex = 0;

  while (givenListStr.isNotEmpty) {
    print("Starting while loop");
    print("Current largest number: $largestNum");
    if (givenListStr.length == 1) {
      maxNum = maxNum + givenListStr.first;
      break;
    }
    for (int i = 0; i < givenListStr.length; i++) {
      if (int.parse(givenListStr[i][0]) >= int.parse(largestNum[0])) {
        largestNum = givenListStr[i];
        largestNumIndex = i;
      }
    }
    maxNum = maxNum + largestNum;
    givenListStr.removeAt(largestNumIndex);
    largestNum = givenListStr.first;
    largestNumIndex = 0;
  }

  return maxNum == "" ? "0" : maxNum;
}

String getMaxNumBuildInFuncs(List<int> givenList) {
  List<String> givenListStr = givenList.map((e) => e.toString()).toList();
  givenListStr.sort((a, b) {
    print("Comparing $a and $b");
    return (b + a).compareTo(a + b);
  });
  String maxNum = givenListStr.join("");

  return maxNum;
}
