class PrimeFactors {
  // Bu fonksiyon, verilen sayının asal çarpanlarını döndüren fonksiyondur.
  List<int> factors(int number) {  
    List<int> result = [];  // Asal çarpanları tutacak bir liste oluşturuyoruz
    int divisor = 2;  // İlk asal çarpan olan 2 ile başlıyoruz

    // Sayı 1'den büyük olduğu sürece devam et
    while (number > 1) {
      // Eğer sayı 'divisor' ile tam bölünebiliyorsa
      while (number % divisor == 0) {
        result.add(divisor);  // Asal çarpanı sonuca ekliyoruz
        number = number ~/ divisor;  // Sayıyı bu asal çarpana bölüyoruz
      }
      divisor++;  // Sonraki asal çarpanı kontrol etmek için divisor'ı arttırıyoruz
    }

    return result;  // Asal çarpanları içeren listeyi döndürüyoruz
  }
}
