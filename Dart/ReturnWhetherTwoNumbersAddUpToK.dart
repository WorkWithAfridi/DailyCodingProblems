// Given a list of numbers and a number k, return whether any two numbers from the list add up to k.
// For example, given [10, 15, 3, 7] and k of 17, return true since 10 + 7 is 17.

void main(List<String> args) {
  int k = 17;
  List<int> numList = [10, 15, 3, 7];
  bool containsValuesThatAddUpToK = check(numList, k);
  print("My list: $numList");
  print("Contains values that add up to $k : ${containsValuesThatAddUpToK}");
}

bool check(
  List numList,
  int k,
) {
  Set<int> viewed = {};
  for (int i = 0; i < numList.length; i++) {
    int currentNumber = numList[i];
    int requiredNumToAddUpToK = k - currentNumber;

    print("Current number: $currentNumber");
    print("Required number to add up to k: $requiredNumToAddUpToK");
    print("Current set values: $viewed");

    // Check if viewed contains a number x, that is equal to x + currentNum = k
    if (viewed.contains(requiredNumToAddUpToK)) {
      print("Set contains required number");
      print("---------------");
      return true;
    }

    viewed.add(currentNumber);
    print("Set does not contain required number, therefore adding it to set.");
    print("Updated set values: $viewed");
    print("---------------");
  }
  return false;
}
