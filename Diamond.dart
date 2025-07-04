class Diamond {
  List<String> rows(String letter) {
    List<String> result = [];

    // 'A' ile girilen harf arasındaki fark (örneğin C = 2)
    int maxIndex = letter.codeUnitAt(0) - 'A'.codeUnitAt(0);

    for (int i = 0; i <= maxIndex; i++) {
      String row = _buildRow(i, maxIndex);
      result.add(row);
    }

    for (int i = maxIndex - 1; i >= 0; i--) {
      String row = _buildRow(i, maxIndex);
      result.add(row);
    }

    return result;
  }

  // Her satırı oluşturur
  String _buildRow(int index, int maxIndex) {
    String letter = String.fromCharCode('A'.codeUnitAt(0) + index);
    int spacesOutside = maxIndex - index;
    String outside = ' ' * spacesOutside;

    if (index == 0) {
      return outside + letter + outside;
    } else {
      int spacesInside = 2 * index - 1;
      String inside = ' ' * spacesInside;
      return outside + letter + inside + letter + outside;
    }
  }
}
