// Good morning! Here's your coding interview problem for today.

// This problem was asked by Two Sigma.

// Using a function rand7() that returns an integer from 1 to 7 (inclusive) with uniform probability, implement a function rand5() that returns an integer from 1 to 5 (inclusive).

import 'dart:math';

main() {
  int randomInt = rand5();
  print("Selected int : $randomInt");
}

int rand5() {
  while (true) {
    int randomInt = rand7();
    print("randomInt from rand7 = $randomInt");
    if (randomInt <= 5) {
      return randomInt;
    }
  }
}

int rand7() {
  Random random = Random();
  return random.nextInt(7) + 1;
}
