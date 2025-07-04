class Proverb {
  // Bu fonksiyon, verilen kelimeler listesi ile bir atasözü oluşturur.
  String recite(List<String> kelimeler) {
    // Eğer kelimeler listesi boşsa, boş bir string döndürüyoruz
    if (kelimeler.isEmpty) return "";

    // Satırları biriktireceğimiz bir liste oluşturuyoruz
    List<String> satirlar = [];

    // Sıralı olarak kelimeler çiftlerini alıp atasözü cümlesini oluşturuyoruz
    for (int i = 0; i < kelimeler.length - 1; i++) {
      String ilk = kelimeler[i];
      String sonraki = kelimeler[i + 1];
      // İlgili cümleyi satırlar listesine ekliyoruz
      satirlar.add("For want of a $ilk the $sonraki was lost.");
    }

    // Son kapanış satırını ekliyoruz, ilk kelimeyi kullanarak
    satirlar.add("And all for the want of a ${kelimeler[0]}.");

    // Oluşan satırları alt alta birleştiriyoruz ve sonucu döndürüyoruz
    return satirlar.join("\n");
  }
}
