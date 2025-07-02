class Etl {
  Map<String, int> transform(Map<String, List<String>> eskiPuanlar) {
    Map<String, int> yeniPuanlar = {};

    for (var puanDegeri in eskiPuanlar.entries) {
      int puan = int.parse(puanDegeri.key); // "1" => 1
      List<String> harfListesi = puanDegeri.value;

      for (var harf in harfListesi) {
        String kucukHarf = harf.toLowerCase();
        yeniPuanlar[kucukHarf] = puan;
      }
    }

    return yeniPuanlar;
  }
}
