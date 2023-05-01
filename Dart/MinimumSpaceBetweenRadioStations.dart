// You are the technical director of WSPT radio, serving listeners nationwide. For simplicity's sake we can consider each listener to live along a horizontal line stretching from 0 (west) to 1000 (east).

// Given a list of N listeners, and a list of M radio towers, each placed at various locations along this line, determine what the minimum broadcast range would have to be in order for each listener's home to be covered.

// For example, suppose listeners = [1, 5, 11, 20], and towers = [4, 8, 15]. In this case the minimum range would be 5, since that would be required for the tower at position 15 to reach the listener at position 20.

import 'dart:math';

void main(List<String> args) {
  List<int> listeners = [1, 5, 11, 20];
  List<int> towers = [4, 8, 15];
  int minDistance = findMinDistance(listeners, towers);
  print("Minimum distance needed it : $minDistance");
}

int findMinDistance(List<int> listeners, List<int> towers) {
  int minDistance = 0;
  for (int listener in listeners) {
    int closestTower = towers.reduce((tower1, tower2) => (tower2 - listener).abs() < (tower1 - listener).abs() ? tower2 : tower1);
    int distanceBetweenTowerAndCurrentListener = (closestTower - listener).abs();
    minDistance = max(minDistance, distanceBetweenTowerAndCurrentListener);
  }
  return minDistance;
}
