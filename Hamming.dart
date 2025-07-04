class Hamming {
  // Bu fonksiyon, iki dizinin Hamming mesafesini hesaplar.
  int calculate(String str1, String str2) {
    // Eğer dizilerin uzunlukları farklıysa, hata fırlatıyoruz.
    if (str1.length != str2.length) {
      throw ArgumentError("strands must be of equal length");
    }

    // Hamming mesafesini saymak için bir sayaç başlatıyoruz
    int counter = 0;

    // Dizilerin her bir karakterini karşılaştırıyoruz
    for (int i = 0; i < str1.length; i++) {
      // Eğer karakterler farklıysa, sayacı bir artırıyoruz
      if (str1[i] != str2[i]) {
        counter++;
      }
    }

    // Hamming mesafesini döndürüyoruz
    return counter;
  }
}
