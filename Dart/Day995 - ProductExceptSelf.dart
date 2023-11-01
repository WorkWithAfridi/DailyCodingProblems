// Given an array of integers, return a new array such that each element at index i of the new array is the product of all the numbers in the original array except the one at i.

// For example, if our input was [1, 2, 3, 4, 5], the expected output would be [120, 60, 40, 30, 24]. If our input was [3, 2, 1], the expected output would be [2, 3, 6].

void main(List<String> args) {
  List<int> givenlist = [4, 5, 1, 8, 2];
  SolutionTwo(givenlist);
}

void SolutionTwo(List<int> givenlist) {
  List<int> ltr = [];
  List<int> rtl = [];
  List<int> finalOutput = [];
  for (int i = 0; i < givenlist.length; i++) {
    if (i == 0) {
      ltr.add(1);
    } else {
      ltr.add(ltr.last * givenlist[i - 1]);
    }
  }
  print("LTR: " + ltr.toString());
  givenlist = givenlist.reversed.toList();
  print("When given list is reversed : ${givenlist.toString()}");
  for (int i = 0; i < givenlist.length; i++) {
    if (i == 0) {
      rtl.add(1);
    } else {
      rtl.add(rtl.last * givenlist[i - 1]);
    }
  }
  rtl = rtl.reversed.toList();
  print("RTL: " + rtl.toString());
  givenlist = givenlist.reversed.toList();
  for (int i = 0; i < givenlist.length; i++) {
    finalOutput.add(ltr[i] * rtl[i]);
  }
  print("Final output is : ${finalOutput.toString()}");
}

void SolutionOne(List<int> givenlist) {
  int productOfAll = 1;

  givenlist.forEach((element) {
    productOfAll = productOfAll * element;
  });

  List<int> finalList = [];
  givenlist.forEach((element) {
    int val = productOfAll ~/ element;
    finalList.add(val);
  });

  print("Initial list: $givenlist");
  print("Final list: $finalList");
}
