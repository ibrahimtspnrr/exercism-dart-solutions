class SumOfMultiples {
  // Bu fonksiyon, verilen faktörlerin katı olan sayıların toplamını döndürür
  int sum(List<int> factors, int limit) {
    int total = 0;  // Toplamı başlatıyoruz

    // limit altındaki tüm sayıları gez
    for (int i = 1; i < limit; i++) {
      bool isMultiple = false;  // Şu anki sayının faktörlerden herhangi birinin katı olup olmadığını kontrol edeceğiz

      // i sayısı verilen faktörlerden herhangi birinin katı mı?
      for (int j = 0; j < factors.length; j++) {
        int factor = factors[j];

        // Eğer faktör 0 ise, bunu atla, çünkü 0'ın katları anlamlı değildir
        if (factor == 0) continue;

        // Eğer i, faktörün katıysa, isMultiple'ı true yap
        if (i % factor == 0) {
          isMultiple = true;
          break;  // herhangi bir faktörle bölünüyorsa yeterli, başka faktörleri kontrol etmemize gerek yok
        }
      }

      // Eğer i, herhangi bir faktörün katıysa, toplamı güncelle
      if (isMultiple) {
        total += i;  // i sayısını toplamaya ekliyoruz
      }
    }

    return total;  // Hesaplanan toplamı döndürüyoruz
  }
}
