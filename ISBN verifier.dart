bool isValid(String isbn) {
  // Tüm tireleri temizle
  final cleaned = isbn.replaceAll('-', '');

  // Uzunluk kontrolü
  if (cleaned.length != 10) return false;

  // İlk 9 karakterin sayısal, son karakterin sayısal veya 'X' olup olmadığını kontrol et
  final regex = RegExp(r'^\d{9}[\dX]$');
  if (!regex.hasMatch(cleaned)) return false;

  // Ağırlıklı toplamı hesapla
  int sum = 0;
  for (int i = 0; i < 10; i++) {
    final char = cleaned[i];
    int value;

    if (i == 9 && char == 'X') {
      value = 10;
    } else {
      value = int.tryParse(char) ?? -1;
      if (value == -1) return false;
    }

    sum += value * (10 - i);
  }

  return sum % 11 == 0;
}
