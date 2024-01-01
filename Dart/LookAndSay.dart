// Good morning! Here's your coding interview problem for today.

// This problem was asked by Epic.

// The "look and say" sequence is defined as follows: beginning with the term 1, each subsequent term visually describes the digits appearing in the previous term. The first few terms are as follows:

// 1
// 11
// 21
// 1211
// 111221
// As an example, the fourth term is 1211, since the third term consists of one 2 and one 1.

// Given an integer N, print the Nth term of this sequence.

void main(List<String> args) {
  int x = 5;
  String term = "1";
  for (int i = 1; i < x; i++) {
    term = getLookAndSayString(term);
  }

  print(term);
}

String getLookAndSayString(String term) {
  term = term + "X";
  String lookAndSayString = "";
  int count = 0;
  String checkTerm = term[0];
  for (int i = 0; i < term.length; i++) {
    if (checkTerm == term[i]) {
      count++;
    } else {
      if (count == 0) {
        count++;
      }
      lookAndSayString = lookAndSayString + "$count$checkTerm";
      checkTerm = term[i];
      count = 1;
    }
  }
  if (count > 1) {
    lookAndSayString = lookAndSayString + "$count$checkTerm";
  }
  return lookAndSayString;
}
