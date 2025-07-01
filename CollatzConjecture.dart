class CollatzConjecture {
  int steps(int number) {
    if (number <= 0) {
      throw ArgumentError("Only positive integers are allowed");
    }

    int counter = 0;
    while (number != 1) {
      if (number % 2 == 0) 
      {
        number = number ~/ 2;
      } else 
      {
        number = 3 * number + 1;
      }
      counter++;
    }
    return counter;
  }
}