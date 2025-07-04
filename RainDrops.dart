class Raindrops {
  // Bu fonksiyon, verilen sayıya göre "Pling", "Plang", "Plong" ya da sayıyı döndüren bir mantık uygular.
  String convert(int number) {
    String result = '';  // Sonuçları biriktireceğimiz bir string oluşturuyoruz

    // Eğer sayı 3'e bölünebiliyorsa, "Pling" ekliyoruz
    if (number % 3 == 0) {
      result += 'Pling';
    }

    // Eğer sayı 5'e bölünebiliyorsa, "Plang" ekliyoruz
    if (number % 5 == 0) {
      result += 'Plang';
    }

    // Eğer sayı 7'ye bölünebiliyorsa, "Plong" ekliyoruz
    if (number % 7 == 0) {
      result += 'Plong';
    }

    // Eğer sonuç boşsa (yani 3, 5 veya 7'ye bölünebilen bir sayı yoksa), sayıyı string olarak döndürüyoruz
    if (result.isEmpty) {
      return number.toString();
    } else {
      // Aksi takdirde, biriktirilen sonuçları döndürüyoruz
      return result;
    }
  }
}
