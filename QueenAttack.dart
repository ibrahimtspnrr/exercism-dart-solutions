class Queen {
  final int row;
  final int column;

  Queen(this.row, this.column) {
    assert(row >= 0, 'row not positive');
    assert(row < 8, 'row not on board');
    assert(column >= 0, 'column not positive');
    assert(column < 8, 'column not on board');
  }

  bool canAttack(Queen other) {
    // Aynı satırdaysa
    if (row == other.row) return true;

    // Aynı sütundaysa
    if (column == other.column) return true;

    // Aynı çaprazdaysa
    if ((row - other.row).abs() == (column - other.column).abs()) return true;

    // Hiçbir koşulu sağlamıyorsa saldırı yok
    return false;
  }
} // constructor 
