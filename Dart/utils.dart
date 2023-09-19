import 'dart:math';

int generateRandomInt() {
  int min = 0;
  int max = 100;
  final random = Random();
  return min + random.nextInt(max - min + 1);
}
