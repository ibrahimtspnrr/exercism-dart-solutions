class ResistorColorDuo {
  // Renklerin sırasını tutan bir liste
  final List<String> colors = [ 
    'black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'grey', 'white' 
  ];

  // Bu fonksiyon, verilen iki rengin değerini hesaplar ve döndürür
  int value(List<String> inputColors) {
    // İlk rengin indeksini buluyoruz
    int index1 = colors.indexOf(inputColors[0]);
    
    // İkinci rengin indeksini buluyoruz
    int index2 = colors.indexOf(inputColors[1]);

    // İlk ve ikinci indeksleri kullanarak, direnç değerini hesaplıyoruz
    return index1 * 10 + index2;
  }
}
