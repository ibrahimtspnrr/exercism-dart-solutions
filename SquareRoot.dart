import 'dart:math';  // 'dart:math' kütüphanesini import ediyoruz, çünkü karekök almak için sqrt fonksiyonuna ihtiyacımız var

class SquareRoot {
  // Bu fonksiyon, verilen sayının karekökünü döndürür
  double squareRoot(double x) {
    double y;  // Karekök sonucunu tutacak değişken

    y = sqrt(x);  // 'x' sayısının karekökünü alıyoruz

    return y;  // Hesaplanan karekökü döndürüyoruz
  }
}
