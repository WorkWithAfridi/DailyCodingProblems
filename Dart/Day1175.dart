// Given a circular array, compute its maximum subarray sum in O(n) time. A subarray can be empty, and in this case the sum is 0.

// For example, given [8, -1, 3, 4], return 15 as we choose the numbers 3, 4, and 8 where the 8 is obtained from wrapping around.

// Given [-4, 5, 1, 0], return 6 as we choose the numbers 5 and 1.

import 'dart:math';

void main(List<String> args) {
  List<int> myList = [8, -1, 3, 4];
  int maxSum = maxSubArraySumInCirculatArray(myList);
  print("Max sum is : $maxSum");
}

int maxSubArraySumInCirculatArray(List<int> myList) {
  int maxSum = 0;
  int currentSum = 0;
  int minSum = 0;
  int currentMinSum = 0;
  int totalSum = 0;

  for (int i = 0; i < myList.length; i++) {
    int currentItem = myList[i];
    totalSum += currentItem;

    currentSum += currentItem;
    maxSum = max(currentSum, maxSum);
    if (currentSum < 0) {
      currentSum = 0;
    }

    currentMinSum += currentItem;
    minSum = min(currentMinSum, minSum);
    if (currentMinSum > 0) {
      currentMinSum = 0;
    }
  }

  if (totalSum == minSum) {
    return maxSum;
  } else {
    return max(maxSum, totalSum - minSum);
  }
  return maxSum;
}
