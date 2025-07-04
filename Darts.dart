import 'dart:math'; // Matematiksel işlemler için sqrt fonksiyonunu kullanabilmek için dart:math kütüphanesini ekliyoruz.

class Darts {
  // Bu fonksiyon, verilen (x, y) koordinatlarına göre dart tahtasında kaç puan alındığını hesaplar.
  int score(double x, double y) {
    // (x, y) koordinatlarından olan mesafeyi hesaplıyoruz. Mesafe, (0, 0) noktasına olan uzaklıktır.
    final distance = sqrt(x * x + y * y);  // Pisagor teoremi ile mesafe hesaplanır.

    // Eğer mesafe 1 veya daha küçükse, 10 puan veriyoruz.
    if (distance <= 1) {
      return 10;
    }
    // Eğer mesafe 1 ile 5 arasında ise, 5 puan veriyoruz.
    if (distance <= 5) {
      return 5;
    }
    // Eğer mesafe 5 ile 10 arasında ise, 1 puan veriyoruz.
    if (distance <= 10) {
      return 1;
    }
    // Eğer mesafe 10'dan büyükse, 0 puan veriyoruz.
    else {
      return 0;
    }
  }
}
