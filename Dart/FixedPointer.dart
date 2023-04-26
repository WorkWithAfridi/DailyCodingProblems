// This problem was asked by Apple.

// A fixed point in an array is an element whose value is equal to its index.
// Given a sorted array of distinct elements, return a fixed point, if one exists. Otherwise, return False.

// For example, given [-6, 0, 2, 40], you should return 2. Given [1, 5, 7, 8], you should return False.

import 'dart:math';

void main(List<String> args) {
  List<int> randomList = generateRandomList(
    10,
    5,
    100,
  );
  randomList = [-6, 0, 2, 40];
  randomList.sort();
  print("MyRandomList: $randomList");
  int containsFixedPosition = hasFixedPoint(randomList);
  print("List contains fixed point? ${containsFixedPosition != -1}");
  print("Index position: $containsFixedPosition");
}

List<int> generateRandomList(int length, int minValue, int maxValue) {
  var rng = Random();
  return List<int>.generate(length, (index) => rng.nextInt(maxValue - minValue + 1) + minValue);
}


// Solved using binary search in a while loop

int hasFixedPoint(List<int> arr) {
  int left = 0;
  int right = arr.length - 1;

  while (left <= right) {
    int mid = left + ((right - left) ~/ 2);

    if (arr[mid] == mid) {
      return mid;
    } else if (arr[mid] < mid) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }

  return -1;
}
