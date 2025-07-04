class ProteinTranslation {
  final Map<String, String> _codonTable = {
    'AUG': 'Methionine',
    'UUU': 'Phenylalanine', 'UUC': 'Phenylalanine',
    'UUA': 'Leucine', 'UUG': 'Leucine',
    'UCU': 'Serine', 'UCC': 'Serine', 'UCA': 'Serine', 'UCG': 'Serine',
    'UAU': 'Tyrosine', 'UAC': 'Tyrosine',
    'UGU': 'Cysteine', 'UGC': 'Cysteine',
    'UGG': 'Tryptophan',
    'UAA': 'STOP', 'UAG': 'STOP', 'UGA': 'STOP',
  };

  List<String> translate(String rna) {
    final List<String> proteins = [];

    int i = 0;
    while (i + 3 <= rna.length) {
      final codon = rna.substring(i, i + 3);

      final protein = _codonTable[codon];
      if (protein == null) {
        throw ArgumentError('Invalid codon: $codon');
      }

      if (protein == 'STOP') {
        return proteins;
      }

      proteins.add(protein);
      i += 3;
    }

    // Eğer STOP gelmeden döngü bitti ve hâlâ harf kaldıysa → eksik codon!
    if (i < rna.length) {
      throw ArgumentError('Incomplete RNA sequence');
    }

    return proteins;
  }
}
