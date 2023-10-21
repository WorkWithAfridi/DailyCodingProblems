// Algo Expert
// Given a String, find the index of the Non Repeating Character but if there are repeating numbers, find the first least repeating integer.

void main(List<String> args) {
  String str = "abcdcaf";

  Map<String, List<int>> repeatNum = {};

  List<String> charsInStr = str.split("");

  for (int i = 0; i < charsInStr.length; i++) {
    String element = charsInStr[i];
    if (repeatNum.containsKey(element)) {
      repeatNum[element]!.add(i);
    } else {
      repeatNum[element] = [i];
    }
  }

  int minListLenth = repeatNum.values // Returns a list of all the values
      .map(
        (list) => list.length,
      ) // Maps the list to their list.length
      .reduce(
        (x, y) => x < y ? x : y,
      ); // Compares each entry and returns the smallest one

  if (minListLenth > 1) {
    print('No non repeating charaters....');
  }

  List<String> keysWithMinLength = repeatNum.keys
      .where(
        (element) => repeatNum[element]!.length == minListLenth,
      ) // Returns a list of keys where their values have a length of minListLength
      .toList();

  Map<String, List<int>> keyValuePairsWithMinLenth = {};

  keysWithMinLength.forEach((element) {
    keyValuePairsWithMinLenth[element] = repeatNum[element]!;
  });

  print(keyValuePairsWithMinLenth);

  int minIntValue = 100000; // Initialize to a large value to find the minimum
  String keyWithMinIntValue = '';

  for (var entry in keyValuePairsWithMinLenth.entries) {
    String key = entry.key;
    List<int> values = entry.value;
    int minValueInList = values.reduce(
      (x, y) => x < y ? x : y,
    );
    if (minValueInList < minIntValue) {
      minIntValue = minValueInList;
      keyWithMinIntValue = key;
    }
  }

  print('First non repeating character is: $keyWithMinIntValue and its value is $minIntValue');
}
