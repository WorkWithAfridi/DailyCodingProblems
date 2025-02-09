void main(List<String> args) {
  // Test cases
  List<int> nums = [1, 2, 3, 4, 0];
  List<int> product = productExceptSelf(nums);
  print(product);
}

List<int> productExceptSelf(List<int> nums) {
  int n = nums.length;

  List<int> productList = List.filled(n, 1);

  int prefix = 1;
  for (int i = 0; i < n; i++) {
    productList[i] = prefix;
    prefix *= nums[i];
  }

  int suffix = 1;
  for (int i = n - 1; i >= 0; i--) {
    productList[i] *= suffix;
    suffix *= nums[i];
  }

  return productList;
}
