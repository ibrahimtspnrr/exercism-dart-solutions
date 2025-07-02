class InvalidNucleotideException implements Exception {
  String cause;
  InvalidNucleotideException(this.cause);
}

class NucleotideCount {
  Map<String, int> count(String strand) {
    // Geçersiz karakterleri kontrol et
    for (int i = 0; i < strand.length; i++) {
      if (!['A', 'C', 'G', 'T'].contains(strand[i])) {
        throw InvalidNucleotideException('Invalid nucleotide: ${strand[i]}');
      }
    }

    // Nükleotit sayımı
    Map<String, int> count = {'A': 0, 'C': 0, 'G': 0, 'T': 0};
    for (var nucleotide in strand.split('')) {
      count[nucleotide] = count[nucleotide]! + 1;
    }
    
    return count;
  }
}
