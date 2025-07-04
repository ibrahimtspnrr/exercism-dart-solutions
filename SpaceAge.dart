class SpaceAge {
  // Bu fonksiyon, verilen gezegen ve saniye değeriyle, kullanıcının o gezegendeki yaşını hesaplar
  double age({required String planet, required int seconds}) {
   
    // 1 Dünya yılına denk gelen saniye sayısı
    const double earthYearInSeconds = 31557600;  // 1 yıl = 365.25 gün * 24 saat * 60 dakika * 60 saniye
    double katsayi;  // Gezegenin yılına göre katsayıyı tutacak değişken

    // Verilen gezegene göre katsayıyı belirliyoruz
    if (planet == 'Earth') {
      katsayi = 1.0;  // Dünya için katsayı 1
    } else if (planet == 'Mercury') {
      katsayi = 0.2408467;  // Merkür için katsayı
    } else if (planet == 'Venus') {
      katsayi = 0.61519726;  // Venüs için katsayı
    } else if (planet == 'Mars') {
      katsayi = 1.8808158;  // Mars için katsayı
    } else if (planet == 'Jupiter') {
      katsayi = 11.862615;  // Jüpiter için katsayı
    } else if (planet == 'Saturn') {
      katsayi = 29.447498;  // Satürn için katsayı
    } else if (planet == 'Uranus') {
      katsayi = 84.016846;  // Uranüs için katsayı
    } else if (planet == 'Neptune') {
      katsayi = 164.79132;  // Neptün için katsayı
    } else {
      // Geçersiz gezegen ismi için hata fırlatıyoruz
      throw ArgumentError('Geçersiz gezegen adi: $planet');
    }

    // Verilen saniyeyi gezegenin yılına göre dönüştürüyoruz
    double result = seconds / (earthYearInSeconds * katsayi);

    // Sonucu 2 ondalıklı formatta döndürüyoruz
    return double.parse(result.toStringAsFixed(2));  // Sonucu 2 ondalıklı olarak döndürüyoruz
  }
}
