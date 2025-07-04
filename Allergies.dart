class Allergies {
  // Bu, alerjenleri ve her bir alerjenin sayı değerini içeren bir Map. 
  // Her alerjenin sayısal değeri, bit düzeyinde işlemlerde kullanılacak.
  final Map<String, int> Allergy = {
    'eggs': 1,           // 00000001
    'peanuts': 2,        // 00000010
    'shellfish': 4,      // 00000100
    'strawberries': 8,   // 00001000
    'tomatoes': 16,      // 00010000
    'chocolate': 32,     // 00100000
    'pollen': 64,        // 01000000
    'cats': 128,         // 10000000
  };

  // Bu fonksiyon, bir alerjenin alerji skorunda olup olmadığını kontrol eder.
  bool allergicTo(String allergen, int score) {
    // Alerjenin sayısal değerini alıyoruz ve bit düzeyinde AND işlemi yapıyoruz.
    // Eğer sonuç sıfırdan farklıysa, bu alerjene karşı alerjisi vardır.
    return (score & Allergy[allergen]!) != 0;
  }

  // Bu fonksiyon, verilen skorla hangi alerjenlere alerjisi olduğunu bulur ve bunları bir liste olarak döndürür.
  List<String> list(int score) {
    List<String> result = [];  // Sonuçları tutacak liste

    // Allergy map'inin her bir öğesi için işlem yapıyoruz
    for (var entry in Allergy.entries) {
      // Bit düzeyinde AND işlemi ile verilen skorun bu alerjene karşı alerji içerip içermediğini kontrol ediyoruz.
      // Eğer içeriyorsa, bu alerjeni listeye ekliyoruz.
      if ((score & entry.value) != 0) {
        result.add(entry.key);  // Alerjenin ismini listeye ekliyoruz
      }
    }

    // Sonuç listesini döndürüyoruz
    return result;
  }
}
