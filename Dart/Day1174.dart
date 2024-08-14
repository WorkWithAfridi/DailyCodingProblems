// Given a string, return whether it represents a number. Here are the different kinds of numbers:

// "10", a positive integer
// "-10", a negative integer
// "10.1", a positive real number
// "-10.1", a negative real number
// "1e5", a number in scientific notation
// And here are examples of non-numbers:

// "a"
// "x 1"
// "a -2"
// "-"

bool isNumber(String s) {
  // Define regular expressions for different types of numbers
  RegExp integerPattern = RegExp(r'^[+-]?\d+$');
  RegExp realPattern = RegExp(r'^[+-]?\d+(\.\d+)?$');
  RegExp scientificPattern = RegExp(r'^[+-]?\d+(\.\d+)?(e[+-]?\d+)?$');

  // Check if the string matches any of the number patterns
  return integerPattern.hasMatch(s) || realPattern.hasMatch(s) || scientificPattern.hasMatch(s);
}

void main() {
  // Using regex
  print(isNumber("10")); // Output: true
  print(isNumber("-10")); // Output: true
  print(isNumber("10.1")); // Output: true
  print(isNumber("-10.1")); // Output: true
  print(isNumber("1e5")); // Output: true

  // Examples of non-numbers
  print(isNumber("a")); // Output: false
  print(isNumber("x 1")); // Output: false
  print(isNumber("a -2")); // Output: false
  print(isNumber("-")); // Output: false

  // Using built-in functions
  print(isNumberSolTwo("10")); // Output: true
  print(isNumberSolTwo("-10")); // Output: true
  print(isNumberSolTwo("10.1")); // Output: true
  print(isNumberSolTwo("-10.1")); // Output: true
  print(isNumberSolTwo("1e5")); // Output: true

  // Examples of non-numbers
  print(isNumberSolTwo("a")); // Output: false
  print(isNumberSolTwo("x 1")); // Output: false
  print(isNumberSolTwo("a -2")); // Output: false
  print(isNumberSolTwo("-")); // Output: false
}

bool? isNumberSolTwo(String s) {
  List<String> chars = s.split("");
  if (chars.length == 0) {
    return false;
  }
  if (chars.length == 1) {
    String char = chars[0];
    if (!checkIfIsInt(char)) {
      return false;
    }
  }

  for (String char in chars) {}
  return null;
}

bool checkIfIsInt(String myStr) {
  return int.tryParse(myStr) != null;
}
