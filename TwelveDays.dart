class TwelveDays {
  // Gün isimleri (1. gün, 2. gün...)
  static const List<String> gunIsimleri = [
    'first',
    'second',
    'third',
    'fourth',
    'fifth',
    'sixth',
    'seventh',
    'eighth',
    'ninth',
    'tenth',
    'eleventh',
    'twelfth'
  ];

  // Hediyeler listesi (şarkıdaki hediyeler)
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

  String recite(int baslangicGunu, int bitisGunu) {
    List<String> sarkiSozleri = [];

    for (int gun = baslangicGunu; gun <= bitisGunu; gun++) {
      String giris = 'On the ${gunIsimleri[gun - 1]} day of Christmas my true love gave to me:';
      List<String> hediyelerListesi = [];

      for (int i = gun - 1; i >= 0; i--) {
        if (i == 0 && gun != 1) {
          hediyelerListesi.add('and ${hediyeler[i]}');
        } else {
          hediyelerListesi.add(hediyeler[i]);
        }
      }

      String tamKita = '$giris ${hediyelerListesi.join(' ')}';
      sarkiSozleri.add(tamKita);
    }

    return sarkiSozleri.join('\n');
  }
}
