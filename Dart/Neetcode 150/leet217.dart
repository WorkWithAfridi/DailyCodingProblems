main() {
  List<int> nums = [1, 2, 3, 4, 5, 6, 7, 8, 1];
  print(containsDuplicate(nums));
}

bool containsDuplicate(List<int> nums) {
  bool result = false;

  Set instanceMapper = {};

  for (int i = 0; i < nums.length; i++) {
    int element = nums[i];
    if (!instanceMapper.contains(element)) {
      instanceMapper.add(element);
    } else {
      result = true;
      break;
    }
  }

  return result;
}
