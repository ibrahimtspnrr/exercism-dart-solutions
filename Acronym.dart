class Acronym {
  String abbreviate(String phrase) {
    
    phrase = phrase.replaceAll('-', ' '); // bütün tireler yerine boşluk gelir

   
    phrase = phrase.replaceAll(RegExp(r'[^A-Za-z\s]'), ''); //harf ve boşluk dışındaki karakterleri siler

   
    List<String> kelimeler = phrase.split(' '); // Boşluklara göre kelimeleri ayırır

    
    String sonuc = ''; // boş string oluşturuldu çünkü son kısım burada tutulacak

    
    for (int i = 0; i < kelimeler.length; i++) {
      if (kelimeler[i].isNotEmpty) {
        String ilkHarf = kelimeler[i][0].toUpperCase();
        sonuc += ilkHarf;
      }
    }

    return sonuc;
  }
}
