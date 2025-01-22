main() {
  String s = "anagram";
  String t = "nagaram";

  print(isAnagram(s, t));
}

bool isAnagram(String s, String t) {
  bool result = false;

  if (s.length != t.length) {
    return false;
  }

  Map<String, int> instanceMapper = {};

  for (int i = 0; i < s.length; i++) {
    String element = s[i];
    instanceMapper[element] = (instanceMapper[element] ?? 0) + 1;
  }

  for (int i = 0; i < t.length; i++) {
    String element = t[i];
    if (instanceMapper.containsKey(element)) {
      instanceMapper[element] = (instanceMapper[element] ?? 0) - 1;
      if (instanceMapper[element] == 0) {
        instanceMapper.remove(element);
      }
    } else {
      return false;
    }
  }

  if (instanceMapper.isEmpty) {
    result = true;
  }
  return result;
}
