// Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

// You may assume that each input would have exactly one solution, and you may not use the same element twice.

// You can return the answer in any order.

// Input: nums = [2,7,11,15], target = 9
// Output: [0,1]
// Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].

List<int> twoSum(List<int> nums, int target) {
  var checkedValues = Map<int, int>();
  for (var currentIndex = 0; currentIndex < nums.length; currentIndex++) {
    int currentValue = nums[currentIndex];
    int requiredNum = target - currentValue;
    if (checkedValues.containsKey(requiredNum)) {
      List<int> ans = [checkedValues[requiredNum]!, currentIndex];
      return ans;
    } else {
      checkedValues[currentValue] = currentIndex;
    }
  }
  return [];
}

void main(List<String> args) {
  print(
    twoSum(
      [3, 2, 9, 8, 7, 4],
      6,
    ),
  );
}
