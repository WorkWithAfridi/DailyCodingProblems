void main(List<String> args) {
  int input = 10;
  int count = 0;
  int sum = 0;
  for (int i = 1; i <= 10; i++) {
    print("Current int: ${i}");
    if (count <= 2) {
      sum += i;
    } else {
      sum -= i;
    }
    if (count == 3) {
      count = 0;
    }
    count++;
  }
  print("Sum: ${sum}");
}
