class NthPrime {
  int prime(int n) {
    if (n <= 0) {
      throw ArgumentError('There is no zeroth prime');
    }

    int count = 0; // Kaç tane asal sayı bulduk
    int number = 1; // Kontrol ettiğimiz sayı

    while (count < n) {
      number++;

      if (Prime(number)) {
        count++;
      }
    }

    return number;
  }

  bool Prime(int number) {
  if (number < 2) {
    return false; // 0 ve 1 asal değil
  }

  for (int i = 2; i < number; i++) {
    if (number % i == 0) {
      return false; // başka bir sayıya bölünürse asal değil
    }
  }

  return true; // hiçbir sayıya bölünmediyse asal
}

}
