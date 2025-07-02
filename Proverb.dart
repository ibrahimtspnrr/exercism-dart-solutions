class Proverb {
  String recite(List<String> kelimeler) {
    if (kelimeler.isEmpty) return "";

    // Satırları burada biriktireceğiz
    List<String> satirlar = [];

    // Sıralı olarak çiftleri ekle
    for (int i = 0; i < kelimeler.length - 1; i++) {
      String ilk = kelimeler[i];
      String sonraki = kelimeler[i + 1];
      satirlar.add("For want of a $ilk the $sonraki was lost.");
    }

    // Son kapanış satırı
    satirlar.add("And all for the want of a ${kelimeler[0]}.");

    // Satırları alt alta birleştir
    return satirlar.join("\n");
  }
}
