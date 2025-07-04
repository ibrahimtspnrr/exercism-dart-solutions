class DifferenceOfSquares {
  // squareOfSum fonksiyonu, 1'den n'ye kadar olan sayıların toplamının karesini hesaplar.
  int squareOfSum(int n) {
    // İlk n sayısının toplamı, n * (n + 1) / 2 formülüyle hesaplanır.
    final sum = n * (n + 1) ~/ 2;

    // Toplamın karesini döndürüyoruz
    return sum * sum;
  }

  // sumOfSquares fonksiyonu, 1'den n'ye kadar olan sayıların karelerinin toplamını hesaplar.
  int sumOfSquares(int n) {
    // 1'den n'ye kadar olan sayıların karelerinin toplamı, n * (n + 1) * (2 * n + 1) / 6 formülüyle hesaplanır.
    return n * (n + 1) * (2 * n + 1) ~/ 6;
  }

  // differenceOfSquares fonksiyonu, squareOfSum ve sumOfSquares arasındaki farkı döndürür.
  int differenceOfSquares(int n) {
    // Öncelikle squareOfSum ve sumOfSquares'ı hesaplıyoruz ve farkını döndürüyoruz.
    return squareOfSum(n) - sumOfSquares(n);
  }
}
