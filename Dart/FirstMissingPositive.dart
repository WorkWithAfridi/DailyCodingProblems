// Given an unsorted integer array nums, return the smallest missing positive integer.

// You must implement an algorithm that runs in O(n) time and uses constant extra space.

// Example 1:

// Input: nums = [1,2,0]
// Output: 3
// Explanation: The numbers in the range [1,2] are all in the array.

// Example 2:

// Input: nums = [3,4,-1,1]
// Output: 2
// Explanation: 1 is in the array but 2 is missing.
// Example 3:

// Input: nums = [7,8,9,11,12]
// Output: 1
// Explanation: The smallest positive integer 1 is missing.

void main(List<String> args) {
  List<int> myList = [3, 4, -1, 1];
  print("Missing smallest positive integer is: ${firstMissingPositive(myList)}");
}

int firstMissingPositive(List<int> nums) {
  if (nums.length == 0) {
    return 1;
  }

  int len = nums.length;

  /// Removes negative number from the list. And replaces them with myList.len + 1.
  for (int i = 0; i < len; i++) {
    if (nums[i] <= 0 || nums[i] > len) {
      nums[i] = len + 1;
    }
  }
  print(nums);

  for (int i = 0; i < len; i++) {
    int idx = nums[i].abs();

    if (idx > len) {
      continue;
    }

    --idx;

    if (nums[idx] > 0) {
      nums[idx] = -nums[idx];
    }
  }

  print(nums);

  for (int i = 0; i < len; i++) {
    if (nums[i] >= 0) {
      return i + 1;
    }
  }

  return len + 1;
}
