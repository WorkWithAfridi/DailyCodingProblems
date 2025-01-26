main() {
  List<int> nums = [1, 1, 1, 2, 2, 3];
  int k = 2;
  print("K most frequent elements: ${topKFrequent(nums, k)}");
}

List<int> topKFrequent(List<int> nums, int k) {
  List<int> ans = [];
  Map<int, int> instanceCounter = {};

  for (int i = 0; i < nums.length; i++) {
    int element = nums[i];
    if (instanceCounter.containsKey(element)) {
      instanceCounter[element] = instanceCounter[element]! + 1;
    } else {
      instanceCounter[element] = 1;
    }
  }

  List<MapEntry<int, int>> sortedList = instanceCounter.entries.toList();
  sortedList.sort((a, b) => b.value.compareTo(a.value));

  for (int i = 0; i < k; i++) {
    ans.add(sortedList[i].key);
  }

  return ans;
}
