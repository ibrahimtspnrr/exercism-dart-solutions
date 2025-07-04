class CollatzConjecture {
  // Bu fonksiyon, Collatz Conjecture'a göre bir sayının 1'e ulaşana kadar kaç adımda sona ereceğini hesaplar.
  // Collatz Conjecture'ı şu şekilde özetleyebiliriz: 
  // - Eğer sayı çiftse, 2'ye bölünür. 
  // - Eğer sayı tekse, 3 ile çarpılır ve 1 eklenir.
  // Bu işlem 1'e ulaşana kadar tekrarlanır.
  
  int steps(int number) {
    // Eğer sayı sıfır veya negatifse, hata fırlatıyoruz çünkü yalnızca pozitif tam sayılar geçerli olmalı.
    if (number <= 0) {
      throw ArgumentError("Only positive integers are allowed");
    }

    // Adım sayısını tutacak bir sayaç başlatıyoruz
    int counter = 0;

    // Sayı 1'e ulaşana kadar döngüye giriyoruz
    while (number != 1) {
      // Eğer sayı çiftse, 2'ye bölüyoruz
      if (number % 2 == 0) {
        number = number ~/ 2;  // `~/` tam sayı bölmesi (int bölmesi) kullanıyoruz
      } else {
        // Eğer sayı tekse, 3 ile çarpıp 1 ekliyoruz
        number = 3 * number + 1;
      }
      // Her bir işlem adımını sayıyoruz
      counter++;
    }
    
    // Sonuç olarak, 1'e ulaşana kadar kaç adımda sonuçlandığını döndürüyoruz
    return counter;
  }
}
