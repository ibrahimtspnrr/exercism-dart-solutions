class Acronym {
  // Bu fonksiyon, verilen bir metni alır ve bu metnin her kelimesinin ilk harfini alarak kısaltma (akronim) oluşturur.
  String abbreviate(String phrase) {
    
    // Tüm tire (-) karakterlerini boşlukla değiştiriyoruz, çünkü tireler arasında kelimeleri ayıran boşluklar gibi düşünülebilir.
    phrase = phrase.replaceAll('-', ' '); 

    // Harf ve boşluk dışındaki karakterleri silmek için RegExp kullanıyoruz. Böylece, noktalama işaretleri, sayılar vs. temizlenmiş olur.
    phrase = phrase.replaceAll(RegExp(r'[^A-Za-z\s]'), ''); 

    // Metni boşluklardan ayırarak kelimelere ayırıyoruz. Her kelimenin ilk harfini alacağız.
    List<String> kelimeler = phrase.split(' '); 

    // Sonuçları tutmak için boş bir string oluşturuyoruz. Bu, akronimi oluşturduğumuz yerdir.
    String sonuc = ''; 

    // Her kelimeyi teker teker kontrol ediyoruz
    for (int i = 0; i < kelimeler.length; i++) {
      // Eğer kelime boş değilse (yani, yalnızca boşluklardan oluşmuyorsa), o kelimenin ilk harfini alıyoruz.
      if (kelimeler[i].isNotEmpty) {
        // Kelimenin ilk harfini alıyoruz ve büyük harfe dönüştürüyoruz.
        String ilkHarf = kelimeler[i][0].toUpperCase();
        // İlk harfi akronim sonucuna ekliyoruz.
        sonuc += ilkHarf;
      }
    }

    // Son olarak, oluşturduğumuz akronimi döndürüyoruz.
    return sonuc;
  }
}
