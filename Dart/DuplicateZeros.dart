// Given a fixed-length integer array arr, duplicate each occurrence of zero,
// shifting the remaining elements to the right.

// Note that elements beyond the length of the original array are not written.
// Do the above modifications to the input array in place and do not return anything.

void main(List<String> args) {
  List<int> input = [1, 0, 2, 3, 0, 4, 5, 0];
  print("input : ${input}");
  getDuplicateZeros(input);
}

void getDuplicateZeros(List<int> arr) {
  if (arr.isEmpty || !arr.contains(0)) {
    print(arr);
    return;
  }

  List<int> tempArr = []..addAll(arr);
  int tempArrIndex = 0;
  for (int i = 0; i < tempArr.length; i++) {
    int currentIndex = tempArr[tempArrIndex];
    arr[i] = currentIndex;
    int nextIndex = i + 1;
    if (currentIndex == 0 && nextIndex < tempArr.length) {
      arr[nextIndex] = 0;
      i++;
    }
    tempArrIndex++;
  }
  print("output : " + arr.toString());
}
