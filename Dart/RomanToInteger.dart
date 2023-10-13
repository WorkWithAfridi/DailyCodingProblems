// LeetCode 13
void main(List<String> args) {
  List<RomanLetter> letters = [
    RomanLetter(letter: "I", value: 1),
    RomanLetter(letter: "V", value: 5),
    RomanLetter(letter: "X", value: 10),
    RomanLetter(letter: "L", value: 50),
    RomanLetter(letter: "C", value: 100),
    RomanLetter(letter: "D", value: 500),
    RomanLetter(letter: "M", value: 1000),
  ];

  String input = "III";
  List<String> myInput = input.split("");
  List<RomanLetter> myRomanInput = getRomanLetterListFromStringLetterList(myInput, letters);

  int sum = 0;
  int j = 1;
  int i = 0;
  while (j < myRomanInput.length) {
    RomanLetter iThRomanLetter = myRomanInput[i];
    RomanLetter jThRomanLetter = myRomanInput[j];
    int val = 0;
    if (iThRomanLetter.value < jThRomanLetter.value) {
      val = jThRomanLetter.value - iThRomanLetter.value;

      sum += val;
      i = j + 1;
      j = j + 2;
    } else {
      sum += iThRomanLetter.value;
      i++;
      j++;
      if (j == myRomanInput.length) {
        sum += jThRomanLetter.value;
      }
    }
    print(sum);
  }
}

List<RomanLetter> getRomanLetterListFromStringLetterList(List<String> myInput, List<RomanLetter> letters) {
  List<RomanLetter> myRomanInput = [];
  myInput.forEach((romanInputLetter) {
    myRomanInput.add(letters.firstWhere((element) => element.letter == romanInputLetter));
  });
  return myRomanInput;
}

class RomanLetter {
  String letter;
  int value;
  RomanLetter({
    required this.letter,
    required this.value,
  });
}
