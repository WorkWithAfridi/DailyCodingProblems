// LeetCode 13
void main(List<String> args) {
  int input = 1994;
  String encodedInput = "";
  List reverserdRomanLetter = romanLetters.reversed.toList();
  while (input != 0) {
    for (int i = 0; i < reverserdRomanLetter.length; i++) {
      RomanLetter romanLetter = reverserdRomanLetter[i];
      print("Current roman letter: ${romanLetter.letter}");
      print("Current input va;ue: ${input}");
      if (romanLetter.value <= input) {
        input -= romanLetter.value;
        encodedInput += romanLetter.letter;
        break;
      }
    }
  }

  print("Encoded input : " + encodedInput);
}

List<RomanLetter> romanLetters = [
  RomanLetter(letter: "I", value: 1),
  RomanLetter(letter: "V", value: 5),
  RomanLetter(letter: "X", value: 10),
  RomanLetter(letter: "L", value: 50),
  RomanLetter(letter: "C", value: 100),
  RomanLetter(letter: "D", value: 500),
  RomanLetter(letter: "M", value: 1000),
];

class RomanLetter {
  String letter;
  int value;
  RomanLetter({
    required this.letter,
    required this.value,
  });
}
