// Given an integer numRows, return the first numRows of Pascal's triangle.

void main(List<String> args) {
  int numRows = 5;
  List<List<int>> pasTriangle = getPascalsTriangle(numRows);
  print("\nPascals Triangle is " + pasTriangle.toString());
}

List<List<int>> getPascalsTriangle(int numRows) {
  List<List<int>> pasTriangle = [];
  if (numRows <= 0) {
    return pasTriangle;
  } else {
    pasTriangle.add([1]);
    print("Pascals Triangle : ${pasTriangle.toString()}");
    print("\n");

    for (int i = 1; i < numRows; i++) {
      List<int> prevList = pasTriangle[i - 1];
      print("Prev List : ${prevList.toString()}");
      List<int> currentList = [];
      currentList.add(1);
      for (int j = 1; j < i; j++) {
        currentList.add(prevList[j - 1] + prevList[j]);
      }
      currentList.add(1);
      print("Current List : ${currentList.toString()}");
      pasTriangle.add(currentList);
      print("Pascals Triangle : ${pasTriangle.toString()}");
      print("\n");
    }
  }
  return pasTriangle;
}
