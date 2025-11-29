import 'dart:math';

List<int> stashedMoney = [2, 7, 9, 3, 1];

main() {
  print(robStashedMoney(stashedMoney));
}

int robStashedMoney(List<int> nums) {
  // [prev, current, n, n+1, n+2, ...]
  int prev = 0;
  int current = 0;
  for (int i in nums) {
    int temp = max(i + prev, current);
    prev = current;
    current = temp;
  }
  return current;
}
