void main(List<String> args) {
  // List<String> strs = ["eat", "tea", "tan", "ate", "nat", "bat"];
  // List<String> strs = ["tea", "tea", "tea"];
  List<String> strs = ["", ""];
  print("Grouped anagrams are : ${groupAnagrams(strs)}");
}

List<List<String>> groupAnagrams(List<String> strs) {
  Map<String, List<String>> groups = {};

  strs.forEach((str) {
    List<String> chars = str.split('');
    chars.sort();
    String sorted = chars.join('');

    if (!groups.containsKey(sorted)) {
      groups[sorted] = [];
    }
    groups[sorted]!.add(str);
  });

  return groups.entries.map((entry) => entry.value).toList();
}
