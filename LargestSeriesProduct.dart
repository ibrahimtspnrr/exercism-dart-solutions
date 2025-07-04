class LargestSeriesProduct {
  int largestProduct(String digits, int span) {
    // Hatalı durumlar
    if (span < 0) {
      throw ArgumentError('span must not be negative');
    }
    if (span > digits.length) {
      throw ArgumentError('span must be smaller than string length');
    }
    if (!RegExp(r'^\d*$').hasMatch(digits)) {
      throw ArgumentError('digits input must only contain digits');
    }
    if (span == 0) return 1;

    int maxProduct = 0;

    for (int i = 0; i <= digits.length - span; i++) {
      String window = digits.substring(i, i + span);
      int product = 1;
      for (int j = 0; j < span; j++) {
        product *= int.parse(window[j]);
      }
      if (product > maxProduct) {
        maxProduct = product;
      }
    }

    return maxProduct;
  }
}
