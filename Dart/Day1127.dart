main() {
  String str = "jiujitsu";

  List<String> uniqueChars = str.split("").toSet().toList();
  List<String> collectedChars = [];
  int lhsIndex = 0;
  int rhsIndex = 0;

  Map<String, int> charOccurrenceCount = {};
  while (rhsIndex < str.length) {
    String rhsChar = str[rhsIndex];
    if (collectedChars.toSet().toList().length >= uniqueChars.length) {
      break;
    } else {
      charOccurrenceCount[rhsChar] = (charOccurrenceCount[rhsChar] ?? 0) + 1;
      collectedChars.add(rhsChar);
      rhsIndex++;
    }
  }

  while (true) {
    String lhsChar = str[lhsIndex];
    if (collectedChars.contains(lhsChar) && (charOccurrenceCount[lhsChar] ?? 0) >= 1) {
      charOccurrenceCount[lhsChar] = (charOccurrenceCount[lhsChar]! - 1);
      collectedChars.removeAt(lhsIndex);
    } else {
      break;
    }
  }

  print(collectedChars);
}
