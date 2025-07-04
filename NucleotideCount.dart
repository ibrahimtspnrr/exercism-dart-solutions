class InvalidNucleotideException implements Exception {
  String cause;  // Hata mesajını tutacak değişken

  // Yapıcı fonksiyon ile hata mesajını alıyoruz
  InvalidNucleotideException(this.cause);
}

class NucleotideCount {
  // Bu fonksiyon, verilen bir DNA dizisinin nükleotit sayımını yapar
  Map<String, int> count(String strand) {
    // Geçersiz karakterleri kontrol ediyoruz
    for (int i = 0; i < strand.length; i++) {
      // Eğer karakter 'A', 'C', 'G', veya 'T' dışında bir şeyse, hata fırlatıyoruz
      if (!['A', 'C', 'G', 'T'].contains(strand[i])) {
        // Geçersiz nükleotit hatasını fırlatıyoruz
        throw InvalidNucleotideException('Invalid nucleotide: ${strand[i]}');
      }
    }

    // Geçerli nükleotitleri sayıyoruz
    Map<String, int> count = {'A': 0, 'C': 0, 'G': 0, 'T': 0};

    // Strand'ı karakterlerine ayırıp her nükleotidi sayıyoruz
    for (var nucleotide in strand.split('')) {
      count[nucleotide] = count[nucleotide]! + 1;
    }

    // Nükleotit sayısını döndürüyoruz
    return count;
  }
}
