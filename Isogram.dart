class Isogram {
  bool isIsogram(String input) {
    String seen = '';  // boş bir string

    for (int i = 0; i < input.length; i++) 
    {
      String harf = input[i].toLowerCase();

      if (harf == ' ' || harf == '-') 
      {
        continue; // boşluk ve tire gelirse devam ediyoruz 
      }

      if (seen.contains(harf)) 
      {
        return false; // daha önce görülüp görülmediği kontrol ediliyor
      }

      seen= seen+harf; // karakterleri boş stringe atıyoruz kelime oluşturuyoruz
    }

    return true; // tekrar yoksa isogramdır
  }
}
