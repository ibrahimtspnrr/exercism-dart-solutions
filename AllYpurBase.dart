class AllYourBase {
  List<int> rebase(int fromBase, List<int> digits, int toBase) {
    // Taban geçerlilik kontrolü
    if (fromBase < 2 || toBase < 2) {
      throw ArgumentError('Bases must be >= 2');
    }

    // Basamak geçerlilik kontrolü
    if (digits.any((d) => d < 0 || d >= fromBase)) {
      throw ArgumentError('Invalid digit for base $fromBase');
    }

    // Eğer liste boşsa veya yalnızca sıfırlardan oluşuyorsa, sonuç [0]
    if (digits.isEmpty || digits.every((d) => d == 0)) {
      return [0];
    }

    // 1. Aşama: fromBase tabanındaki basamakları onluk değere çevir
    int value = 0;
    for (int digit in digits) {
      value = value * fromBase + digit;
    }

    // 2. Aşama: onluk değeri toBase tabanına çevir
    List<int> result = [];
    while (value > 0) {
      result.insert(0, value % toBase);
      value ~/= toBase;
    }

    return result;
  }
}
