class HouseRobbery {
  static int topDownHouseRobbery(
      List<int> houses, int currentHouse, Map<int, int> tempDict) {
    if (currentHouse >= houses.length) {
      return 0;
    } else {
      if (!tempDict.containsKey(currentHouse)) {
        int stealFirstHouse = currentHouse +
            topDownHouseRobbery(houses, currentHouse + 2, tempDict);
        int skipFirstHouse =
            topDownHouseRobbery(houses, currentHouse + 1, tempDict);
        tempDict[currentHouse] = (stealFirstHouse > skipFirstHouse)
            ? stealFirstHouse
            : skipFirstHouse;
      }
      return tempDict[currentHouse]!;
    }
  }

  static int bottomUpHouseRobbery(List<int> houses) {
    List<int> tempArr = List<int>.filled(houses.length + 2, 0);
    for (int i = houses.length - 1; i >= 0; i--) {
      tempArr[i] = houses[i] + tempArr[i + 2] > tempArr[i + 1]
          ? houses[i] + tempArr[i + 2]
          : tempArr[i + 1];
    }
    return tempArr[0];
  }
}
