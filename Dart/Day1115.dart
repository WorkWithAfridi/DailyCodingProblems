// Given an integer n and a list of integers l,
// write a function that randomly generates a number from 0 to n-1 that isn't in l (uniform).

import 'dart:math';

int generateRandomNumber(int n, List<int> l) {
  Set<int> exclusionSet = Set<int>.from(l);
  List<int> candidates = List<int>.generate(n, (index) => index)
      .where(
        (element) => !exclusionSet.contains(
          element,
        ),
      )
      .toList();

  if (candidates.isEmpty) {
    throw Exception("No valid candidates available");
  }

  Random random = Random();
  int randomIndex = random.nextInt(candidates.length);
  return candidates[randomIndex];
}

void main() {
  int n = 10;
  List<int> l = [1, 4, 5, 8];
  int randomNumber = generateRandomNumber(n, l);
  print("Random number: $randomNumber");
}
