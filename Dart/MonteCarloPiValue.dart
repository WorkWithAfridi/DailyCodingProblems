// The area of a circle is defined as πr^2.
// Estimate π to 3 decimal places using a Monte Carlo method.

// Hint: The basic equation of a circle is x2 + y2 = r2.

import 'dart:math';

void main(List<String> args) {
  int numOfPointer = 1000000;
  String estimatedPiValue = estimatePiInThreeDecimal(totalPointers: numOfPointer);
  print("Estimated pi value with $numOfPointer pointers is $estimatedPiValue");
}

String estimatePiInThreeDecimal({required int totalPointers}) {
  int pointersInCircle = 0;
  Random rand = Random();
  for (int i = 0; i < totalPointers; i++) {
    double x = rand.nextDouble();
    double y = rand.nextDouble();
    // if r=1 -> Area of circle = pi*r2 = pi
    // Area of square of side 2r = 2(1)*2(1)
    // ratio of the area of the circle to the area of the square is pi/4
    if (x * x + y * y <= 1) {
      pointersInCircle++;
    }
  }
  // if we generate 10 darts and 7 of them land inside the circle, the ratio of darts inside the circle to the total number of darts is 7/10. This ratio is proportional to the ratio of the area of the circle to the area of the square, which is pi/4. Multiplying the ratio by 4 gives us an estimate of pi, which is 2.8 in this case.

  double estimatedPiValue = 4 * (pointersInCircle / totalPointers);
  return estimatedPiValue.toStringAsFixed(3);
}
