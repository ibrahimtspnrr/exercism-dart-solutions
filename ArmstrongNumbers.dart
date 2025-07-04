class ArmstrongNumbers {
  // Sayı Armstrong mu? Kontrol eder
  bool isArmstrongNumber(String number) { // string kullanma sebebim uzunluğunu length ile alabilmek için
    int length = number.length; // Kaç basamaklı
    int total = 0; // Toplamı tut

    // Her basamağı sırayla al
    for (int i = 0; i < length; i++) {
      int digit = int.parse(number[i]); // Basamak değeri // parse stringi int e çevirir
      total += power(digit, length); // Üssünü al ve topla
    }

    // Toplam sayı ile aynıysa Armstrong'dur
    return total == int.parse(number);
  }

  // Sayının üssünü hesaplar (örnek: 3^4 = 81)
  int power(int base, int exponent) {
    int result = 1;
    for (int i = 0; i < exponent; i++) {
      result *= base;
    }
    return result;
  }
}

