class RotationalCipher {
  // Bu fonksiyon, verilen metni verilen kaydırma anahtarıyla şifreler
  String rotate({required String text, required int shiftKey}) {
    // Sonuçları burada tutacağız
    StringBuffer result = StringBuffer();

    // Kaydırma anahtarını 26'ya bölüp kalanını alıyoruz. Böylece 26'dan büyük anahtarlar da doğru çalışır.
    shiftKey = shiftKey % 26;

    // Her bir karakteri teker teker işleyeceğiz
    for (var char in text.split('')) {
      // Eğer karakter bir harfse, kaydırma işlemi yapalım
      if (RegExp(r'[a-zA-Z]').hasMatch(char)) {
        // Küçük harfler için 97, büyük harfler için 65'in ASCII değerini kullanıyoruz
        int base = (char.toLowerCase() == char) ? 97 : 65;

        // Harfin mevcut pozisyonunu buluyoruz (örneğin, 'a' için 0, 'b' için 1, vb.)
        int offset = char.codeUnitAt(0) - base;

        // Harfi kaydırıyoruz, sonra mod 26 ile döngüsel hale getiriyoruz (yani 'z' sonrası 'a' olacak)
        int shifted = (offset + shiftKey) % 26;

        // Yeni harfi elde edip sonucu ekliyoruz
        result.write(String.fromCharCode(base + shifted));
      } else {
        // Eğer karakter bir harf değilse (boşluk, noktalama işaretleri gibi), olduğu gibi ekliyoruz
        result.write(char);
      }
    }

    // Sonucu döndürüyoruz
    return result.toString();
  }
}