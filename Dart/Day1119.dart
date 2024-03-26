// // Given an array of numbers N and an integer k, your task is to split N into k partitions such that the maximum sum of any partition is minimized. Return this sum.

// // For example, given N = [5, 1, 2, 7, 3, 4] and k = 3, you should return 8, since the optimal partition is [5, 1, 2], [7], [3, 4].

// void main(List<String> args) {
//   List<int> myList = [5, 1, 2, 7, 3, 4];
//   int k = 3;

//   List<List<int>> partitions = getPartitions(myList, k);
// }

// List<List<int>> getPartitions(List<int> myList, int k) {
//   int myListLen = (myList.length) - 1;

//   print("myListlen is " + myListLen.toString());
//   List<List<int>> partitions = [];
//   myList.sort();

//   for (int i = 0; i < k; i++) {
//     int currentIndex = myListLen - i;
//     print("current index is " + currentIndex.toString());
//     partitions.add([myList[currentIndex]]);
//     myList.removeAt(currentIndex);
//   }

//   while (myList.length > 0) {
//     for (int i = 0; i < partitions.length; i++) {
//       List<int> currentList = partitions[i];
//       int currentListSum = getSum(currentList);
//       if(currentListSum< )
//     }
//   }
//   print(partitions);
//   return partitions;
// }

// int getSum(List<int> list) {
//   int sum = 0;
//   for (int i = 0; i < list.length; i++) {
//     sum += list[i];
//   }
//   return sum;
// }
