// Problem: Powerset by AlgoExpert

void main(List<String> args) {
  List<int> myList = [1, 2, 3];
  List<List<int>> powerSet = [];
  powerSet.add([]);
  for (int i = 0; i < myList.length; i++) {
    int currentPower = myList[i];
    List<List<int>> tempPowerSet = [];
    for (int j = 0; j < powerSet.length; j++) {
      List<int> currentSubset = [...powerSet[j]];
      currentSubset.add(currentPower);
      tempPowerSet.add(currentSubset);
    }
    powerSet = [...powerSet, ...tempPowerSet];
  }
  print("Powerset: ${powerSet.toString()}");
}
