// find the maximum sum subarray within a given array of integers
import 'dart:math';

void main(List<String> args) {
  List<int> myList = [-2, -3, 4, -1, -2, 1, 5, -3];
  int maxSum = maxSubArraySum(myList);
  print("Max sum is : $maxSum");
}

int maxSubArraySum(List<int> myList) {
  int maxSum = 0;
  int currentSum = 0;
  for (int i = 0; i < myList.length; i++) {
    int currentItem = myList[i];
    currentSum += currentItem;

    maxSum = max(currentSum, maxSum);

    if (currentSum < 0) {
      currentSum = 0;
    }
  }
  return maxSum;
}
