class Isogram {
  // Bu fonksiyon, verilen stringin bir isogram olup olmadığını kontrol eder.
  bool isIsogram(String input) {
    String seen = '';  // Daha önce görülen harfleri tutacak bir boş string

    // Stringin her bir karakteri üzerinde döngü ile işlem yapıyoruz
    for (int i = 0; i < input.length; i++) {
      String harf = input[i].toLowerCase();  // Her harfi küçük harfe dönüştürüyoruz

      // Eğer harf boşluk veya tireyse, bunları geçiyoruz
      if (harf == ' ' || harf == '-') {
        continue;  // boşluk veya tireyi atlıyoruz
      }

      // Eğer harf daha önce görülmüşse, isogram değil demektir
      if (seen.contains(harf)) {
        return false;  // Bu harf daha önce görülmüştür
      }

      // Harf daha önce görülmediyse, onu 'seen' stringine ekliyoruz
      seen = seen + harf;
    }

    // Eğer hiç aynı harf bulunmadıysa, input isogramdır
    return true;
  }
}
