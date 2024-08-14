// Good morning! Here's your coding interview problem for today.

// This problem was asked by Google.

// In linear algebra, a Toeplitz matrix is one in which the elements on any given diagonal from top left to bottom right are identical.

// Here is an example:

// 1 2 3 4 8
// 5 1 2 3 4
// 4 5 1 2 3
// 7 4 5 1 2
// Write a program to determine whether a given input is a Toeplitz matrix.

// Further explain this problem, without solving it

isToeplitzMatrix(List<List<int>> givenMatrix, int rowLen, int colLen) {
  for (int currentListIndex = 0; currentListIndex < colLen - 1; currentListIndex++) {
    List<int> currentList = givenMatrix[currentListIndex];
    for (int currentListElement = 0; currentListElement < rowLen - 1; currentListElement++) {
      int nextListIndex = currentListIndex + 1;
      List<int> nextList = givenMatrix[nextListIndex];
      if (currentList[currentListElement] != nextList[currentListElement + 1]) {
        return false;
      }
    }
  }
  return true;
}

main() {
  print("With test case: 1");
  List<List<int>> givenMatrix = [
    [1, 2, 3, 4, 8],
    [5, 1, 2, 3, 4],
    [4, 5, 1, 2, 3],
    [7, 4, 5, 1, 2]
  ];
  int rowLen = givenMatrix.first.length;
  int colLen = givenMatrix.length;
  print("Given Matrix: ${givenMatrix}");
  print("Is it Toeplitz Matrix: ${isToeplitzMatrix(givenMatrix, rowLen, colLen)}");
  print("------------------------------------");
  print("With test case: 2");
  givenMatrix = [
    [1, 2, 3, 4, 8],
    [5, 1, 2, 3, 4],
    [4, 5, 1, 2, 3],
    [7, 4, 5, 2, 2]
  ];
  rowLen = givenMatrix.first.length;
  colLen = givenMatrix.length;
  print("Given Matrix: ${givenMatrix}");
  print("Is it Toeplitz Matrix: ${isToeplitzMatrix(givenMatrix, rowLen, colLen)}");
  print("------------------------------------");
}
