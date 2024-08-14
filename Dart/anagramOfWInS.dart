// This problem was asked by Google.

// Given a word W and a string S, find all starting indices in S which are anagrams of W.

// For example, given that W is "ab", and S is "abxaba", return 0, 3, and 4.

List<int> anagramListIndecies(String w, String s) {
  int sLen = s.length;
  int wLen = w.length;
  List<int> anagramIndexList = [];
  for (int i = 0; i < sLen; i++) {
    String checkStr = s[i];
    for (int j = 1; j < wLen; j++) {
      int indexOfNextChar = i + j;
      if (indexOfNextChar > s.length - 1) {
        return anagramIndexList;
      }
      checkStr = checkStr + s[indexOfNextChar];
    }
    if (checkStr == w || checkStr.split("").reversed.join("") == w) {
      anagramIndexList.add(i);
    }
    print("Check string is : ${checkStr}");
  }
  return anagramIndexList;
}

void main(List<String> args) {
  print("Test case : 1");
  String w = "ab";
  String s = "abxaba";
  print("starting indices in S which are anagrams of W: ${anagramListIndecies(w, s)}");
  print("Test case : 2");
  w = "abc";
  s = "bcacbabca";
  print("starting indices in S which are anagrams of W: ${anagramListIndecies(w, s)}");
}
