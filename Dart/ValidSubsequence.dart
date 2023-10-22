// Algo Expert - Check if the main sequence contains elements of the subsquence in the order they are given.

void main(List<String> args) {
  List<int> mainSeq = [5, 1, 22, 25, 6, -1, 8, 10];
  List<int> subSeq = [1, 6, -1, 10];

  int currentIndex = 0;
  int numberOfIntegersFound = 0;

  subSeq.forEach(
    (element) {
      bool foundElement = false;
      int currentSubIndex = element;
      print("Current sub sq index: $currentSubIndex");
      for (int i = currentIndex; i < mainSeq.length; i++) {
        int currentMainIndex = mainSeq[i];
        print("Current main sq index:" + currentMainIndex.toString());

        if (currentMainIndex == currentSubIndex) {
          numberOfIntegersFound++;
          currentIndex = i + 1;
          print("Found match: subInd: $currentSubIndex - mainInd: $currentMainIndex - numOfIntFound: $numberOfIntegersFound - currentIndex: $currentIndex");
          break;
        }
      }
      print("-------------------------");
    },
  );
  if (numberOfIntegersFound == subSeq.length) {
    print("Main sequence contains sub sequence");
  } else {
    print("Main sequence does not contain sub sequence");
  }
}
