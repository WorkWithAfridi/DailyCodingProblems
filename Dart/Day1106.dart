// This problem was asked by Mailchimp.

// You are given an array representing the buildingHeights of neighboring buildings on a city street, from east to west. The city assessor would like you to write an algorithm that returns how many of these buildings have a view of the setting sun, in order to properly value the street.

// For example, given the array [3, 7, 8, 3, 6, 1], you should return 3, since the top floors of the buildings with buildingHeights 8, 6, and 1 all have an unobstructed view to the west.

// Can you do this using just one forward pass through the array?

void main(List<String> args) {
  List<int> buildingHeights = [3, 7, 8, 3, 6, 1];
  int buildingCount = 0;

  int maxHeight = buildingHeights.reduce((value, element) => value > element ? value : element);
  int maxHeightIndex = buildingHeights.indexOf(maxHeight);

  if (maxHeightIndex == buildingHeights.length) {
    buildingCount++;
  } else {
    for (int i = maxHeightIndex; i < buildingHeights.length - 1; i++) {
      int ithBuildingHeight = buildingHeights[i];
      List<int> nextBuildings = buildingHeights.sublist(i + 1, buildingHeights.length);
      int largestNextBuilding = nextBuildings.reduce((value, element) => value > element ? value : element);
      if (ithBuildingHeight > largestNextBuilding) {
        buildingCount++;
      }
    }
    buildingCount++; // Add the last building
  }

  print("Total buildings with sunset view: $buildingCount");
}
