// Given a list of integers and a number K, return which contiguous elements of the list sum to K.

// For example, if the list is [1, 2, 3, 4, 5] and K is 9, then it should return [2, 3, 4], since 2 + 3 + 4 = 9.

void main(List<String> args) {
  List<int> givenList = [1, 2, 3, 4, 5];
  int k = 9;

  List<int> myList = [];

  int lhsIndex = 0;
  int rhsIndex = 0;

  print("Running loop ${lhsIndex} ${rhsIndex}");

  while (rhsIndex < givenList.length) {
    int sum = getSum(myList);
    print("Sum is : ${sum}");
    if (sum == k) {
      print(myList);
      break;
    } else if (sum > k) {
      myList.removeAt(lhsIndex);
      lhsIndex++;
    } else {
      myList.add(givenList[rhsIndex]);
      rhsIndex++;
    }
  }

  print(myList);
}

int getSum(List<int> list) {
  int sum = 0;
  for (int i = 0; i < list.length; i++) {
    sum += list[i];
  }
  return sum;
}
