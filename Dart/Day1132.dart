// Write a function that rotates a list by k elements. For example, [1, 2, 3, 4, 5, 6] rotated by two becomes [3, 4, 5, 6, 1, 2]. Try solving this without creating a copy of the list. How many swap or move operations do you need?

void rotateList(List<int> list, int k) {
  int n = list.length - 1;

  if (k > n) {
    return;
  }

  swapAndReverse(list, 0, k - 1);

  swapAndReverse(list, k, n);

  swapAndReverse(list, 0, n);
}

void swapAndReverse(List<int> list, int start, int end) {
  print("Given list is: ${list.toString()}");
  print("Swapping operatorss between ${list[start]} and ${list[end]}");
  while (start < end) {
    int temp = list[start];
    list[start] = list[end];
    list[end] = temp;
    print("Swapping: ${list[start]} - ${list[end]}");
    print(list);
    start++;
    end--;
  }
}

void main() {
  List<int> myList = [1, 2, 3, 4, 5, 6];
  int k = 2;
  rotateList(myList, k);
  print(myList);
}
