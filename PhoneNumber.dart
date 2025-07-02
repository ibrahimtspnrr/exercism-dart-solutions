class PhoneNumber {
  String clean(String giris) {
    String sadeceSayilar = '';

    for (int i = 0; i < giris.length; i++) {
      String karakter = giris[i];

      if (karakter.contains(RegExp(r'[0-9]'))) {
        sadeceSayilar += karakter;
      } else if (karakter.contains(RegExp(r'[a-zA-Z]'))) {
        throw FormatException('letters not permitted');
      } else if (!' ()-+.'.contains(karakter)) {
        throw FormatException('punctuations not permitted');
      }
    }

    if (sadeceSayilar.length < 10) {
      throw FormatException('must not be fewer than 10 digits');
    }

    if (sadeceSayilar.length > 11) {
      throw FormatException('must not be greater than 11 digits');
    }

    if (sadeceSayilar.length == 11) {
      if (sadeceSayilar[0] != '1') {
        throw FormatException('11 digits must start with 1');
      }
      sadeceSayilar = sadeceSayilar.substring(1); 
    }

    String alanKoduIlk = sadeceSayilar[0];
    String santralIlk = sadeceSayilar[3];

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

    return sadeceSayilar;
  }
}
