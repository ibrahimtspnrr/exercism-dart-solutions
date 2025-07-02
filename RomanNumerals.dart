extension RomanNumerals on int {
  String toRoman() {
    int sayi = this;
    String sonuc = '';

    // Roma rakamları ve karşılıkları (büyükten küçüğe)
    List<int> arabik = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1];
    List<String> roma = ['M', 'CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV', 'I'];

    // Sayıyı dönüştür
    for (int i = 0; i < arabik.length; i++) {
      while (sayi >= arabik[i]) {
        sonuc += roma[i];
        sayi -= arabik[i];
      }
    }

    return sonuc;
  }
}
