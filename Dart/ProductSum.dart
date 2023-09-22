// Problem: Product Sum by AlgoExpert

// List myList = [
//   5,
//   2,
//   [
//     7,
//     -1,  // X 1
//   ],
//   3,
//   [
//     6, // X 2
//     [
//       -13, // X3
//       8,
//     ],
//     4,
//   ],
// ];

// Sum up special array values
// Multiply the sum by the depth of the array

int productSum(
  int depth,
  List myList,
) {
  print("Stepping into list --------${depth}--------");
  int sum = 0;
  for (int i = 0; i < myList.length; i++) {
    var x = myList[i];
    print("X is : ${x}");
    if (x is int) {
      sum += x;
    } else if (x is List) {
      depth++;
      int res = productSum(depth, x);
      int tempRes = res * depth;
      depth--;
      sum += tempRes;
    }
  }
  print("Current sum is: ${sum}");
  return sum;
}

void main(List<String> args) {
  List myList = [
    5,
    2,
    [
      7,
      -1,
    ],
    3,
    [
      6,
      [
        -13,
        8,
      ],
      4,
    ],
  ];
  ;

  int sumOfProd = productSum(1, myList);
  print("Sum of products is: ${sumOfProd}");
}
