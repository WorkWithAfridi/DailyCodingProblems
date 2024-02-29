// At a popular bar, each customer has a set of favorite drinks, and will happily accept any drink among this set. For example, in the following situation, customer 0 will be satisfied with drinks 0, 1, 3, or 6.

// preferences = {
//     0: [0, 1, 3, 6],
//     1: [1, 4, 7],
//     2: [2, 4, 7, 5],
//     3: [3, 2, 5],
//     4: [5, 8]
// }
// A lazy bartender working at this bar is trying to reduce his effort by limiting the drink recipes he must memorize. Given a dictionary input such as the one above, return the fewest number of drinks he must learn in order to satisfy all customers.

// For the input above, the answer would be 2, as drinks 1 and 5 will satisfy everyone.

List<int> fewestDrinks({
  required Map<int, List<int>> preferences,
  required List<int> foundUsers,
  required List<int> drinkList,
  required int totalUsers,
}) {
  Map<int, List<int>> favoriteDrinkForUsers = {};

  preferences.forEach((key, value) {
    value.forEach((element) {
      favoriteDrinkForUsers.update(
        element,
        (list) => (list)..add(key),
        ifAbsent: () => [key],
      );
    });
  });

  int drinkWithLargestUsers = findDrinkWithLargestUsers(favoriteDrinkForUsers);
  List<int> userList = favoriteDrinkForUsers[drinkWithLargestUsers]!;

  preferences.removeWhere((key, value) => userList.contains(key));
  foundUsers.addAll(userList);
  drinkList.add(drinkWithLargestUsers);

  if (foundUsers.length == totalUsers) {
    return drinkList;
  }
  if (preferences.isEmpty) {
    return drinkList;
  }

  return fewestDrinks(
    preferences: preferences,
    foundUsers: foundUsers,
    drinkList: drinkList,
    totalUsers: totalUsers,
  );
}

int findDrinkWithLargestUsers(Map<int, List<int>> map) {
  int drinkWithLargestUsers = map.entries.fold(
    map.keys.first,
    (currentKey, entry) => map[currentKey]!.length > entry.value.length ? currentKey : entry.key,
  );

  return drinkWithLargestUsers;
}

void main() {
  // Example usage
  Map<int, List<int>> preferences = {
    0: [0, 1, 3, 6],
    1: [1, 4, 7],
    2: [2, 4, 7, 5],
    3: [3, 2, 5],
    4: [5, 8]
  };

  var result = fewestDrinks(
    preferences: preferences,
    foundUsers: [],
    drinkList: [],
    totalUsers: preferences.length,
  );
  print(result); // Output: 2
}
