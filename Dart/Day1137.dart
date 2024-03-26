// ('first', a: 2, b: true, 'last') constructs a record, and car(pair) and cdr(pair) returns the first and last element of that pair.
// For example, car(cons(3, 4)) returns 3, and cdr(cons(3, 4)) returns 4.

// Given this implementation of cons:
// var record = ('first', a: 2, b: true, 'last');
// Implement car and cdr.

void main(List<String> args) {
  (dynamic x, dynamic y) record = (3, 4);
  print(car(record));
  print(cdr(record));
}

int car((dynamic x, dynamic y) pair) {
  return pair.$1;
}

int cdr((dynamic x, dynamic y) pair) {
  return pair.$2;
}
