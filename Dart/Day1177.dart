// Given an array of integers where every integer occurs three times except for one integer,
// which only occurs once, find and return the non-duplicated integer.

// For example, given [6, 1, 3, 3, 3, 6, 6], return 1. Given [13, 19, 13, 13], return 19.

void main(List<String> args) {
  List<int> myList = [6, 1, 3, 3, 3, 6, 6];
  int? result = findSingle(myList);
  if (result != null) {
    print("Single occurance item is : " + result.toString());
  } else {
    print("No single occurance item found");
  }
}

int? findSingle(List<int> myList) {
  Map<int, int> occuranceCountMap = {};
  for (int num in myList) {
    occuranceCountMap[num] = (occuranceCountMap[num] ?? 0) + 1;
  }

  for (int num in myList) {
    if (occuranceCountMap[num] == 1) {
      return num;
    }
  }
  return null;
}
