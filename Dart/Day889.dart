// Good morning! Here's your coding interview problem for today.

// This problem was asked by Amazon.

// Run-length encoding is a fast and simple method of encoding strings. The basic idea is to represent repeated successive characters as a single count and character. For example, the string "AAAABBBCCDAA" would be encoded as "4A3B2C1D2A".

// Implement run-length encoding and decoding. You can assume the string to be encoded have no digits and consists solely of alphabetic characters. You can assume the string to be decoded is valid.

void main(List<String> args) {
  String myString = "AAAABBBCCDAA";
  String runLenEncode = getRunLengthEncoding(myString: myString);
  // String runLenDecode = getRunLengthDecoding(code: runLenEncode);
  print("String is : ${myString}");
  print("runLenEncode : ${runLenEncode}");
  // print("runLenDecode : ${runLenDecode}");
}

String getRunLengthEncoding({
  required String myString,
}) {
  Map<String, int> myMap = {};
  for (String x in myString.split("").toList()) {
    print(x);
    myMap[x] = (myMap[x] ?? 0) + 1;
  }
  String runLenEncodeing = "";
  myMap.forEach((key, value) {
    runLenEncodeing = runLenEncodeing + key + value.toString();
  });
  runLenEncodeing = "";
  String currentStr = myString.split("").toList().first;
  int strCount = 0;
  for (String x in myString.split("").toList()) {
    if (x != currentStr) {
      runLenEncodeing = runLenEncodeing + strCount.toString() + currentStr;
      currentStr = x;
      strCount = 1;
    } else {
      strCount++;
    }
  }
  runLenEncodeing = runLenEncodeing + strCount.toString() + currentStr;
  return runLenEncodeing;
}

String getRunLengthDecoding({
  required String code,
}) {
  String myString = "";
  int myStringLen = code.length;

  for (int i = 0; i < myStringLen; i++) {
    int count = int.parse(code[i]);
    String char = code[i + 1];
    for (int j = 0; i < count; j++) {
      myString = myString + char;
    }
    i++;
  }
  return myString;
}
