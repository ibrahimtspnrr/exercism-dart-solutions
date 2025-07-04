class NthPrime {
  // Bu fonksiyon, verilen n'inci asal sayıyı döndüren fonksiyondur.
  int prime(int n) {
    // Eğer n sıfır ya da negatifse, geçerli bir asal sayı isteği olmadığından hata fırlatıyoruz
    if (n <= 0) {
      throw ArgumentError('There is no zeroth prime');
    }

    int count = 0; // Bulduğumuz asal sayıların sayısını tutuyoruz
    int number = 1; // Kontrol ettiğimiz sayıyı başlatıyoruz

    // n'inci asal sayıya kadar döngü devam eder
    while (count < n) {
      number++;  // Bir sonraki sayıyı kontrol ediyoruz

      // Eğer sayı asal ise, sayacımızı bir arttırıyoruz
      if (Prime(number)) {
        count++;
      }
    }

    // n'inci asal sayıyı döndürüyoruz
    return number;
  }

  // Bu fonksiyon, verilen sayının asal olup olmadığını kontrol eder
  bool Prime(int number) {
    // 0 ve 1 asal sayılar değildir
    if (number < 2) {
      return false;
    }

    // 2 ile verilen sayının kendisi arasında olan tüm sayıları kontrol ediyoruz
    for (int i = 2; i < number; i++) {
      // Eğer bir sayıya bölünüyorsa, asal değil
      if (number % i == 0) {
        return false;
      }
    }

    // Hiçbir sayıya bölünmüyorsa, asal sayıdır
    return true;
  }
}
