enum Classification { perfect, abundant, deficient }

class PerfectNumbers {
  // Bu fonksiyon, verilen sayıyı mükemmel, bol veya eksik sayılardan birine sınıflandırır.
  Classification classify(int number) {
    // Eğer sayı negatif ya da sıfırsa, hata fırlatıyoruz
    if (number <= 0) {
      throw ArgumentError("Only positive integers are allowed.");
    }

    int sum = 0;  // Sayının bölenlerinin toplamını tutacak değişken

    // 1'den verilen sayıya kadar olan bölenleri kontrol ediyoruz
    for (int i = 1; i <= number; i++) {
      // Eğer 'i' sayısı 'number' ile tam bölünüyorsa, 'i' bölenidir
      if (number % i == 0) {
        // 'number' ile 'i' eşit olmasın diye, 'number' hariç bölenleri topluyoruz
        if (number != i) {
          sum = sum + i;  // Böleni toplamımıza ekliyoruz
        }
      }
    }

    // Bölenlerin toplamı 'number' ile eşitse, 'mükemmel' sayıdır
    if (sum == number) {
      return Classification.perfect;
    }

    // Bölenlerin toplamı 'number'dan büyükse, 'bol' sayıdır
    if (sum > number) {
      return Classification.abundant;
    } else {
      // Diğer durumda, 'eksik' sayıdır
      return Classification.deficient;
    }
  }
}
