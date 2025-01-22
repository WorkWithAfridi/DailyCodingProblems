main() {
  List<int> nums = [3, 3];
  int target = 6;
  print(twoSum(nums, target));
}

List<int> twoSum(List<int> nums, int target) {
  var checkedValues = Map<int, int>();
  for (var i = 0; i < nums.length; i++) {
    int currentValue = nums[i];
    int requiredNum = target - currentValue;
    if (checkedValues.containsKey(requiredNum)) {
      return [checkedValues[requiredNum]!, i];
    }
    checkedValues[currentValue] = i;
  }
  return [];
}
