// This problem was asked by Google.

// Implement integer exponentiation. That is, implement the pow(x, y) function,
// where x and y are integers and returns x^y.

// Do this faster than the naive method of repeated multiplication.

// For example, pow(2, 10) should return 1024.

void main() {
  int base = 2;
  int expo = 10;

  print("${base} ^ ${expo} = " + pow(base, expo).toString());
}

int? pow(int base, int expo) {
  if (expo == 0) {
    return 1;
  }

  int? result = pow(base, expo ~/ 2);
  if (result != null) {
    result *= result;
    if (expo % 2 == 1) {
      result *= base;
    }
    return result;
  }
  return null;
}
