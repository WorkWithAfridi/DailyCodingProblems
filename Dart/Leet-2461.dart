void main(List<String> args) {
  List<int> nums = [1, 1, 1, 7, 8, 9];
  int k = 3;
  int pointerAt = 0;
  int currentIndex = 0;
  int sum = 0;
  List<int> subArray = [];
  int currentMax = 0;
  while (pointerAt != nums.length) {
    int subArrayLen = subArray.length;
    int currentValue = nums[currentIndex];

    if (subArrayLen <= (k - 1)) {
      if (subArray.contains(nums[currentIndex])) {
        sum = 0;
        subArray.clear();
        pointerAt = currentIndex;
      } else {
        subArray.add(currentValue);
        sum += currentValue;
        currentIndex++;
      }
    } else {
      if (sum > currentMax) {
        currentMax = sum;
      }
      sum = 0;
      subArray.clear();
      pointerAt++;
      currentIndex = pointerAt;
    }
    if (currentIndex == nums.length) {
      if (sum > currentMax && subArray.length == k) {
        currentMax = sum;
      }
      break;
    }
  }

  print("$currentMax");
}
