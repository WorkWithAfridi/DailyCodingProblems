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
  int x = 1;
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

// A more optimized solution

String lookAndSaySequence(int n) {
  if (n == 1) {
    return '1';
  }

  String prevTerm = lookAndSaySequence(n - 1);
  StringBuffer currentTerm = StringBuffer();
  int count = 1;

  for (int i = 0; i < prevTerm.length - 1; i++) {
    if (prevTerm[i] == prevTerm[i + 1]) {
      count++;
    } else {
      currentTerm.write('$count${prevTerm[i]}');
      count = 1;
    }
  }

  currentTerm.write('$count${prevTerm[prevTerm.length - 1]}');
  return currentTerm.toString();
}
// This solution directly calculates the Nth term of the "look and say" sequence without repeatedly calling the function for each term. It uses a recursive approach and builds the sequence iteratively, improving efficiency and readability.





