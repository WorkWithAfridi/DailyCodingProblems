// Problem : Class photo from AlgoExpert

void main(List<String> args) {
  List<int> red = [5, 8, 1, 3, 4];
  List<int> blue = [6, 9, 2, 4, 5];

  // heights unique
  // red on same row
  // blue on same row
  // must have 2 rows
  // front row len < back row len

  red.sort();
  blue.sort();

  String backrowColor = "";
  String frontrowColor = "";
  if (red.last > blue.last) {
    backrowColor = "red";
    frontrowColor = "blue";
  } else {
    backrowColor = "blue";
    frontrowColor = "red";
  }

  bool isSuccessful = false;

  for (int i = 0; i < red.length; i++) {
    int currentRed = red[i];
    int currentBlue = blue[i];

    if (backrowColor == "red") {
      if (currentRed > currentBlue) {
        isSuccessful = true;
      } else {
        isSuccessful = false;
      }
    } else {
      if (currentRed < currentBlue) {
        isSuccessful = true;
      } else {
        isSuccessful = false;
      }
    }
  }

  print("Is photo possible: ${isSuccessful}");
  if (backrowColor == "red") {
    print("Red : ${red}");
    print("Blue : ${blue}");
  } else {
    print("Blue : ${blue}");
    print("Red : ${red}");
  }
}
