import 'dart:math';

class ResistorColorTrio {
  // Renklerin sırasını tutan bir liste
  final List<String> colors = ['black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'grey', 'white'];

  // Bu fonksiyon, verilen üç renk ile bir direnç değeri etiketi döndüren fonksiyondur
  String label(List<String> inputColors) {
    // İlk, ikinci ve üçüncü renklerin sırasındaki indeksleri alıyoruz
    int index1 = colors.indexOf(inputColors[0]);
    int index2 = colors.indexOf(inputColors[1]);
    int index3 = colors.indexOf(inputColors[2]);

    // İlk iki rengin değerlerini birleştiriyoruz ve üçüncü renk ile çarpıyoruz
    int result2 = (index1 * 10 + index2) * pow(10, index3).toInt();

    // Direnç değerine göre uygun birimle etiketi döndürüyoruz
    if (result2 >= 1000000000) {
      return "${(result2 ~/ 1000000000)} gigaohms";  // Gigaohm, 1 milyar ohmdur
    } else if (result2 >= 1000000) {
      return "${(result2 ~/ 1000000)} megaohms";  // Megaohm, 1 milyon ohmdur
    } else if (result2 >= 1000) {
      return "${(result2 ~/ 1000)} kiloohms";  // Kiloohm, 1 bin ohmdur
    } else {
      return "$result2 ohms";  // Daha küçük direnç değerleri için sadece ohm döndürülür
    }
  }
}
