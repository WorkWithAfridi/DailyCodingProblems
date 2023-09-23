// Problem: Tandem Bicycle by AlgoExpert

import 'dart:math';

void main(List<String> args) {
  List<int> rSS = [5, 5, 3, 9, 2];
  List<int> bSS = [3, 6, 7, 2, 1];

  // bool findFastest = true;

  rSS.sort();
  bSS.sort();
  bSS = bSS.reversed.toList();
  List<List<int>> pairs = [];
  int fastestSpeed = 0;
  for (int i = 0; i < rSS.length; i++) {
    List<int> pair = [];
    pair.add(rSS[i]);
    pair.add(bSS[i]);
    pairs.add(pair);
    fastestSpeed += max(rSS[i], bSS[i]);
  }

  print("Pairs: " + pairs.toString());
  print("Fastest possible speed: ${fastestSpeed}");
}
