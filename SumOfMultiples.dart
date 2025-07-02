class SumOfMultiples {
  int sum(List<int> factors, int limit) {
    int total = 0;

    // limit altındaki tüm sayıları gez
    for (int i = 1; i < limit; i++) {
      bool isMultiple = false;

      // i sayısı verilen faktörlerden herhangi birinin katı mı?
      for (int j = 0; j < factors.length; j++) {
        int factor = factors[j];

        // faktör 0 ise geç, çünkü 0'ın katları anlamlı değil
        if (factor == 0) continue;

        if (i % factor == 0) {
          isMultiple = true;
          break; // herhangi bir faktörle bölünüyorsa yeterli
        }
      }

      if (isMultiple) {
        total += i; // i sayısını toplama ekle
      }
    }

    return total;
  }
}
