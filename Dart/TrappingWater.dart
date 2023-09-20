import 'dart:math';

// Trapping water
// Brute force
int bruteForce(List<dynamic> height, int area) {
  for (int i = 0; i < height.length; i++) {
    int iVal = height[i];
    for (int j = i + 1; j < height.length; j++) {
      int jVal = height[j];
      int minH = min(iVal, jVal);
      int tempArea = minH * (j - i);
      print("i val: $iVal");
      print("j val: ${jVal}");
      print("min H: $minH");
      print("Temp area: $tempArea");
      print("-----------");
      area = max(area, tempArea);
    }
  }
  return area;
}

void main(List<String> args) {
  Stopwatch stopwatch = new Stopwatch()..start();
  List height = [1, 8, 6, 2, 5, 4, 8, 3, 7];
  int area = 0;
  area = linearTime(height, area);
  print('Code executed in ${stopwatch.elapsed}');
  print("Area : ${area}");
}

int linearTime(List<dynamic> height, int area) {
  int l = 0;
  int r = height.length - 1;
  while (l != r) {
    int lVal = height[l];
    int rVal = height[r];
    int minH = min(lVal, rVal);
    int width = r - l;
    int tempArea = width * minH;
    area = max(tempArea, area);
    if (lVal > rVal) {
      r--;
    } else {
      l++;
    }
  }
  return area;
}
