class PascalsTriangle {
  // Bu fonksiyon, verilen satır sayısına göre Pascal Üçgeni'ni oluşturur ve döndürür.
  List<List<int>> rows(int satirSayisi) {
    List<List<int>> ucgen = [];  // Pascal Üçgeni'ni saklamak için bir liste başlatıyoruz.

    // Pascal Üçgeni'ni oluşturmak için her satırı hesaplıyoruz
    for (int i = 0; i < satirSayisi; i++) {
      List<int> satir = [];  // Her satırı tutacak boş bir liste oluşturuyoruz.

      // Satırdaki her elemanı hesaplıyoruz (satırdaki her sayı)
      for (int j = 0; j <= i; j++) {
        // Satırın ilk ve son elemanı her zaman 1'dir
        if (j == 0 || j == i) {
          satir.add(1);  // İlk ve son elemanlar 1 olarak eklenir.
        } else {
          // Diğer elemanlar, bir üst satırdaki iki elemanın toplamıdır
          int oncekiSatirdanUstSol = ucgen[i - 1][j - 1];  // Üst satırdan bir solundaki eleman
          int oncekiSatirdanUst = ucgen[i - 1][j];  // Üst satırdaki ayni sütundaki eleman
          satir.add(oncekiSatirdanUstSol + oncekiSatirdanUst);  // İki elemanın toplamını ekliyoruz
        }
      }

      // Hesaplanan satırı, Pascal Üçgeni'ne ekliyoruz
      ucgen.add(satir);
    }

    // Pascal Üçgeni'ni döndürüyoruz
    return ucgen;
  }
}
