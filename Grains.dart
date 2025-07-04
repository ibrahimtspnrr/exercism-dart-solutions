BigInt square(final int n) {
  // Eğer 'n' 1 ile 64 arasında değilse, bir hata fırlatıyoruz
  if (n < 1 || n > 64) {
    throw ArgumentError('square must be between 1 and 64');
  }

  // 'n-1' kadar 2'nin üssünü hesaplıyoruz ve sonucu döndürüyoruz
  return BigInt.two.pow(n - 1);
}

BigInt total() {
  // 64. kareye kadar olan toplamı hesaplıyoruz
  // Bu, 2^64 - 1'dir
  return BigInt.two.pow(64) - BigInt.one;
}
