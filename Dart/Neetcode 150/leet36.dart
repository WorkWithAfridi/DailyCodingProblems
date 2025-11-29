void main(List<String> args) {
  List<List<String>> board = [
    ["5", "3", ".", ".", "7", "3", ".", ".", "."],
    ["6", ".", ".", "1", "9", "5", ".", ".", "."],
    [".", "9", "8", ".", ".", ".", ".", "6", "."],
    ["8", ".", ".", ".", "6", ".", ".", ".", "3"],
    ["4", ".", ".", "8", ".", "3", ".", ".", "1"],
    ["7", ".", ".", ".", "2", ".", ".", ".", "6"],
    [".", "6", ".", ".", ".", ".", "2", "8", "."],
    [".", ".", ".", "4", "1", "9", ".", ".", "5"],
    [".", ".", ".", ".", "8", ".", ".", "7", "9"],
  ];
  bool isValid = isValidSudokuBoard(board);
  print("Is valid: $isValid");
}

bool isValidSudokuBoard(List<List<String>> board) {
  bool isValid = true;

  return isValid;
}
