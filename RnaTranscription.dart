class RnaTranscription {
  String toRna(String dna) {
    String rna = '';

    for (int i = 0; i < dna.length; i++) {
      String harf = dna[i];

      if (harf == 'G') {
        rna = rna + 'C';
      } else if (harf == 'C') {
        rna =rna + 'G';
      } else if (harf == 'T') {
        rna = rna + 'A';
      } else if (harf == 'A') {
        rna = rna + 'U';
      } else {
        
        throw ArgumentError('Geçersiz DNA karakteri: $harf');
      }
    }

    return rna;
  }
}
