class PhoneNumber {
  // Bu fonksiyon, verilen telefon numarasını temizler ve geçerli bir formatta döndürür.
  String clean(String giris) {
    String sadeceSayilar = '';  // Temizlenmiş telefon numarasını tutacağımız string

    // Verilen girişi karakter karakter kontrol ediyoruz
    for (int i = 0; i < giris.length; i++) {
      String karakter = giris[i];

      // Eğer karakter bir rakam ise, onu sadeceSayilar'a ekliyoruz
      if (karakter.contains(RegExp(r'[0-9]'))) {
        sadeceSayilar += karakter;
      } 
      // Eğer karakter harf ise, hata fırlatıyoruz
      else if (karakter.contains(RegExp(r'[a-zA-Z]'))) {
        throw FormatException('letters not permitted');
      } 
      // Eğer karakter geçerli olmayan bir işaret ise, hata fırlatıyoruz
      else if (!' ()-+.'.contains(karakter)) {
        throw FormatException('punctuations not permitted');
      }
    }

    // Telefon numarasının uzunluğu 10'dan küçükse hata fırlatıyoruz
    if (sadeceSayilar.length < 10) {
      throw FormatException('must not be fewer than 10 digits');
    }

    // Telefon numarasının uzunluğu 11'den büyükse hata fırlatıyoruz
    if (sadeceSayilar.length > 11) {
      throw FormatException('must not be greater than 11 digits');
    }

    // Eğer telefon numarası 11 haneli ise, ilk rakamın 1 olmasını bekliyoruz
    if (sadeceSayilar.length == 11) {
      if (sadeceSayilar[0] != '1') {
        throw FormatException('11 digits must start with 1');
      }
      // Eğer 11 haneliyse, ilk 1'i atıyoruz (1 alan kodunu belirtir)
      sadeceSayilar = sadeceSayilar.substring(1);
    }

    // Alan kodunun ilk rakamını kontrol ediyoruz (0 veya 1 olmamalı)
    String alanKoduIlk = sadeceSayilar[0];
    String santralIlk = sadeceSayilar[3];  // Santral kodunun ilk rakamını kontrol ediyoruz

    if (alanKoduIlk == '0') {
      throw FormatException('area code cannot start with zero');
    }
    if (alanKoduIlk == '1') {
      throw FormatException('area code cannot start with one');
    }
    if (santralIlk == '0') {
      throw FormatException('exchange code cannot start with zero');
    }
    if (santralIlk == '1') {
      throw FormatException('exchange code cannot start with one');
    }

    // Temizlenmiş telefon numarasını döndürüyoruz
    return sadeceSayilar;
  }
}
