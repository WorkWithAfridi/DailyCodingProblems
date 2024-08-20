// This problem was asked by Facebook.

// Given a multiset of integers, return whether it can be partitioned into two subsets
// whose sums are the same.

// For example, given the multiset {15, 5, 20, 10, 35, 15, 10}, it would return true,
// since we can split it up into {15, 5, 10, 15, 10} and {20, 35}, which both add up to 55.

// Given the multiset {15, 5, 20, 10, 35}, it would return false,
// since we can't split it up into two subsets that add up to the same sum.

bool canPartition(List<int> nums) {
  print("List: ${nums.toString()}");

  int n = nums.length;
  print("Total integers in the list: ${n}");

  int totalSum = nums.reduce((a, b) => a + b);
  print("Total sum: ${totalSum}");

  // If the total sum is odd, it's impossible to partition into two subsets with equal sums
  if (totalSum % 2 != 0) {
    return false;
  }

  int targetSum = totalSum ~/ 2;
  print("Target sum: ${targetSum}");

  // DP array to check if a subset sum is possible
  List<bool> dp = List<bool>.filled(targetSum + 1, false);

  dp[0] = true; // Base case: A sum of 0 is always possible with an empty subset

  // Iterate over each number in the nums array
  for (int num in nums) {
    // Iterate backwards to avoid overwriting the dp array
    for (int i = targetSum; i >= num; i--) {
      dp[i] = dp[i] || dp[i - num];
    }
  }
  print("-----------------------");
  print("DP array: ${dp.toString()}");

  return dp[targetSum];
}

void main() {
  List<int> multiset1 = [15, 5, 20, 10, 35, 15, 10];
  List<int> multiset2 = [15, 5, 20, 10, 35];

  print(canPartition(multiset1)); // true
  print(canPartition(multiset2)); // false
}
