DateTime addGigasecondTo(DateTime verilenTarih) {
  // 1 gigasaniye = 1.000.000.000 saniye
  int gigasaniye = 1000000000;

  // verilen tarihe 1.000.000.000 saniye ekliyoruz
  Duration eklenecekSure = Duration(seconds: gigasaniye);

  // yeni tarihi hesaplıyoruz
  DateTime yeniTarih = verilenTarih.add(eklenecekSure);

  // sonucu döndürüyoruz
  return yeniTarih;
}
