class Queen {
  final int row;     // Satır koordinatı
  final int column;  // Sütun koordinatı

  // Yapıcı fonksiyon ile satır ve sütun parametrelerini alıyoruz
  Queen(this.row, this.column) {
    // Satırın geçerli aralıkta olup olmadığını kontrol ediyoruz
    assert(row >= 0, 'row not positive');
    assert(row < 8, 'row not on board');
    
    // Sütunun geçerli aralıkta olup olmadığını kontrol ediyoruz
    assert(column >= 0, 'column not positive');
    assert(column < 8, 'column not on board');
  }

  // Bu fonksiyon, iki dama taşının birbirini saldırıp saldırmadığını kontrol eder
  bool canAttack(Queen other) {
    // Eğer aynı satırdaysa, birbirini saldırabilirler
    if (row == other.row) return true;

    // Eğer aynı sütundaysa, birbirini saldırabilirler
    if (column == other.column) return true;

    // Eğer aynı çaprazda iseler, birbirini saldırabilirler
    // Bu, satır farkı ile sütun farkının mutlak değerlerinin birbirine eşit olduğu durumu kontrol eder
    if ((row - other.row).abs() == (column - other.column).abs()) return true;

    // Eğer yukarıdaki koşulların hiçbiri sağlanmıyorsa, birbirini saldırmazlar
    return false;
  }
}
