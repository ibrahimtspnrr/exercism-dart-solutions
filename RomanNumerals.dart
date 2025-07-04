extension RomanNumerals on int {
  // Bu fonksiyon, bir sayıyı Roma rakamlarına dönüştürür
  String toRoman() {
    int sayi = this;  // Bu extension, sayıyı int türünde alır
    String sonuc = '';  // Roma rakamlarını tutacak bir string oluşturuyoruz

    // Roma rakamları ve karşılıkları (büyükten küçüğe sıralı)
    List<int> arabik = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1];  // Arap rakamları
    List<String> roma = ['M', 'CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV', 'I'];  // Roma rakamları

    // Sayıyı dönüştürmek için Roma rakamları listesinde döngü kuruyoruz
    for (int i = 0; i < arabik.length; i++) {
      // Sayı, şu anki Roma rakamı karşılığından büyük veya eşitse, dönüştürmeye başla
      while (sayi >= arabik[i]) {
        sonuc += roma[i];  // Roma rakamını sonuca ekliyoruz
        sayi -= arabik[i];  // Sayıyı, Roma rakamına karşılık gelen değerden çıkarıyoruz
      }
    }

    return sonuc;  // Roma rakamlarıyla sonucu döndürüyoruz
  }
}
