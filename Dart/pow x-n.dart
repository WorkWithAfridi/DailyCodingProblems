// Leet code 50

void main(List<String> args) {
  double x = 2.1;
  int n = 3;
  double res = myPow(x, n);

  print("My res is : ${res}");
}

double myPow(double x, int n) {
  if (n == 1) {
    return x;
  }
  n = n - 1;
  x = x * myPow(x, n);
  return x;
}
