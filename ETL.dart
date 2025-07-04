class Etl {
  // Bu fonksiyon, eski puan sistemini yeni puan sistemine dönüştürür.
  // Eski sistemde, her harf bir grup içinde bulunur ve gruptaki tüm harflere aynı puan atanır.
  // Yeni sistemde, her harfe bir puan verilir ve küçük harfler ile büyük harfler aynı kabul edilir.
  
  Map<String, int> transform(Map<String, List<String>> eskiPuanlar) {
    // Yeni puanlar haritasını başlatıyoruz.
    Map<String, int> yeniPuanlar = {};

    // Eski puanlar map'inin her bir öğesini döngü ile işliyoruz
    for (var puanDegeri in eskiPuanlar.entries) {
      // Eski puanları integer'a çeviriyoruz. (Örneğin: "1" => 1)
      int puan = int.parse(puanDegeri.key); // "1" => 1

      // Her grup için, o grup içindeki harfleri alıyoruz
      List<String> harfListesi = puanDegeri.value;

      // Her harfi tek tek işliyoruz
      for (var harf in harfListesi) {
        // Harfleri küçük harfe çeviriyoruz, çünkü büyük ve küçük harfler aynı kabul edilecek
        String kucukHarf = harf.toLowerCase();

        // Yeni puanlar haritasına harfi ve puanını ekliyoruz
        // Eğer harf zaten varsa, yeni puan değeri üzerine yazılacak.
        yeniPuanlar[kucukHarf] = puan;
      }
    }

    // Yeni puanlar haritasını döndürüyoruz
    return yeniPuanlar;
  }
}
