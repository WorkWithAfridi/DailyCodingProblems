// Good morning! Here's your coding interview problem for today.

// This problem was asked by Google.

// You are given an array of arrays of integers, where each array corresponds
// to a row in a triangle of numbers. For example, [[1], [2, 3], [1, 5, 1]] represents the triangle:

//   1
//  2 3
// 1 5 1
// We define a path in the triangle to start at the top and go down one row at a time to an adjacent value, eventually ending with an entry on the bottom row. For example, 1 -> 3 -> 5. The weight of the path is the sum of the entries.

// Write a program that returns the weight of the maximum weight path.

import 'dart:math';

int generateRandomInt() {
  int min = 0;
  int max = 100;
  final random = Random();
  return min + random.nextInt(max - min + 1);
}

Map populateTriangleMap(Map myMap) {
  for (int i = 0; i < 5; i++) {
    List<int> myListOfInt = [];
    for (int j = 0; j <= i; j++) {
      myListOfInt.add(generateRandomInt());
      myMap[i] = myListOfInt;
    }
  }
  return myMap;
}

List findMaximumWeightPath(Map myMap) {
  List<int> maxNodes = [];
  myMap.forEach((key, value) {
    List<int> nodeList = value;
    nodeList.sort();
    maxNodes.add(nodeList.last);
  });
  return maxNodes;
}

void main(List<String> args) {
  Map myMap = {};
  populateTriangleMap(myMap);

  print("Triangle list before operation: " + myMap.toString());

  List maxNodes = findMaximumWeightPath(myMap);

  String myPath = "";
  int weight = 0;

  maxNodes.forEach(
    (element) {
      weight = weight + int.parse(element.toString());
      myPath == "" ? myPath = "$element" : myPath = myPath + "-> ${element}";
    },
  );

  print("Triangle list after operation: " + myMap.toString());
  print("Path: " + myPath);
  print("Path weight: " + weight.toString());
}
