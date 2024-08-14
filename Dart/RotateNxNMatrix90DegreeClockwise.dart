// This problem was asked by Facebook.

// Given an N by N matrix, rotate it by 90 degrees clockwise.

// For example, given the following matrix:

// [[1, 2, 3],
//  [4, 5, 6],
//  [7, 8, 9]]
// you should return:

// [[7, 4, 1],
//  [8, 5, 2],
//  [9, 6, 3]]
// Follow-up: What if you couldn't use any extra space?

main() {
  List<List<int>> givenMatrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];

  int N = givenMatrix.first.length;
  print("N: $N");
  print("Initial matrix: ${givenMatrix}");

  for (int i = 0; i < givenMatrix.length; i++) {
    for (int j = 0; j < givenMatrix.length; j++) {
      givenMatrix[j].add(givenMatrix[i][j]);
    }
  }

  for (int i = 0; i < givenMatrix.length; i++) {
    givenMatrix[i].removeRange(0, N);
    givenMatrix[i] = givenMatrix[i].reversed.toList();
  }
  print("rotated matrix: ${givenMatrix}");
}
