class RnaTranscription {
  // Bu fonksiyon, verilen DNA dizisini RNA dizisine çevirir.
  String toRna(String dna) {
    String rna = '';  // Boş bir RNA dizisi oluşturuyoruz

    // Verilen DNA dizisini karakter karakter işliyoruz
    for (int i = 0; i < dna.length; i++) {
      String harf = dna[i];  // Her bir karakteri alıyoruz

      // DNA'daki her karakterin karşılık gelen RNA karakterini ekliyoruz
      if (harf == 'G') {
        rna = rna + 'C';  // G -> C
      } else if (harf == 'C') {
        rna = rna + 'G';  // C -> G
      } else if (harf == 'T') {
        rna = rna + 'A';  // T -> A
      } else if (harf == 'A') {
        rna = rna + 'U';  // A -> U
      } else {
        // Eğer geçersiz bir DNA karakteri varsa, hata fırlatıyoruz
        throw ArgumentError('Geçersiz DNA karakteri: $harf');
      }
    }

    return rna;  // RNA dizisini döndürüyoruz
  }
}
