// Given a string, determine whether any permutation of it is a palindrome.

// For example, carrace should return true, since it can be rearranged to form racecar, which is a palindrome.
// daily should return false, since there's no rearrangement that can form a palindrome.

void main(List<String> args) {
  String myStr = "carrace";
  print("Can the $myStr be reformatted to a palindrome : ${checkIfPalindromeIsPossible(myStr: myStr)}");
}

bool checkIfPalindromeIsPossible({required String myStr}) {
  int strLen = myStr.length;
  int evenCount = 0;
  int oddCount = 0;
  Map letterCount = {};

  for (String x in myStr.split("").toList()) {
    if (letterCount.containsKey(x)) {
      letterCount[x] = letterCount[x] + 1;
    } else {
      letterCount[x] = 1;
    }
  }

  letterCount.forEach((key, value) {
    if (value % 2 == 0) {
      evenCount++;
    } else {
      oddCount++;
    }
  });

  if (strLen % 2 == 0 && oddCount == 0) {
    return true;
  } else if (strLen % 2 == 1 && oddCount % 2 == 1) {
    return true;
  }

  print(letterCount);
  return false;
}
