class ResistorColor {
  // Renklerin sırasını tutan bir liste
  final List<String> colors = ['black','brown','red','orange','yellow','green','blue','violet','grey','white'];

  // Bu fonksiyon, verilen rengin renk kodunu döndürür
  int colorCode(String color) {
    // Verilen rengin, renkler listesinde hangi indekste olduğunu buluyoruz
    return colors.indexOf(color);
  }
}
