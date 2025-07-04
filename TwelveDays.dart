class TwelveDays {
  // Gün isimleri (1. gün, 2. gün... şeklinde tanımlanmış)
  static const List<String> gunIsimleri = [
    'first', 'second', 'third', 'fourth', 'fifth', 'sixth', 
    'seventh', 'eighth', 'ninth', 'tenth', 'eleventh', 'twelfth'
  ];

  // Hediyeler listesi (şarkıdaki her bir günün hediyeleri)
  static const List<String> hediyeler = [
    'a Partridge in a Pear Tree.',
    'two Turtle Doves,',
    'three French Hens,',
    'four Calling Birds,',
    'five Gold Rings,',
    'six Geese-a-Laying,',
    'seven Swans-a-Swimming,',
    'eight Maids-a-Milking,',
    'nine Ladies Dancing,',
    'ten Lords-a-Leaping,',
    'eleven Pipers Piping,',
    'twelve Drummers Drumming,'
  ];

  // Şarkıyı baştan sona belirli bir aralıkta söylemek için yazılmış fonksiyon
  String recite(int baslangicGunu, int bitisGunu) {
    List<String> sarkiSozleri = [];  // Şarkının tüm sözlerini tutacak liste

    // Günler arasında döngü kurarak şarkıyı oluşturuyoruz
    for (int gun = baslangicGunu; gun <= bitisGunu; gun++) {
      // Her gün için giriş kısmı
      String giris = 'On the ${gunIsimleri[gun - 1]} day of Christmas my true love gave to me:';
      List<String> hediyelerListesi = [];  // Her bir günün hediyeleri için liste

      // Şarkının hediyelerini sıralıyoruz, ters sıralamada, önceki gün hediyeleri ekleniyor
      for (int i = gun - 1; i >= 0; i--) {
        // Eğer bu 1. günse ve 1'den büyük bir günse, "and" ekleyerek hediyeyi başlatıyoruz
        if (i == 0 && gun != 1) {
          hediyelerListesi.add('and ${hediyeler[i]}');
        } else {
          hediyelerListesi.add(hediyeler[i]);
        }
      }

      // Şarkının o gününe ait tam kısmı birleştiriyoruz
      String tamKita = '$giris ${hediyelerListesi.join(' ')}';
      sarkiSozleri.add(tamKita);  // Şarkının bu kısmını listeye ekliyoruz
    }

    return sarkiSozleri.join('\n');  // Şarkı sözlerini satır satır birleştirerek döndürüyoruz
  }
}
