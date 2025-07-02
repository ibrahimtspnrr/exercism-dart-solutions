class Anagram {
  List<String> findAnagrams(String hedef, List<String> adaylar) {
    List<String> bulunanAnagramlar = [];

    // Hedef kelimeyi küçük harfe çevir ve harflerini sırala
    String hedefKucuk = hedef.toLowerCase();
    List<String> hedefHarfler = hedefKucuk.split('')..sort();
    String siraliHedef = hedefHarfler.join();

    for (String aday in adaylar) {
      // Aday kelimeyi küçük harfe çevir
      String adayKucuk = aday.toLowerCase();

      // Eğer aday kelime hedef kelimenin aynısıysa devam et (kendiyle anagram olamaz)
      if (adayKucuk == hedefKucuk) continue;

      // Aday kelimenin harflerini sırala
      List<String> adayHarfler = adayKucuk.split('')..sort();
      String siraliAday = adayHarfler.join();

      // Sıralı hali hedefin sıralı haliyle aynıysa anagramdır
      if (siraliAday == siraliHedef) {
        bulunanAnagramlar.add(aday);
      }
    }

    return bulunanAnagramlar;
  }
}
