int score(String word) {
  int score = 0;  // Skoru başlatıyoruz

  // Kelimenin her harfi üzerinde döngü yapıyoruz
  for (int i = 0; i < word.length; i++) {
    
    String letter = word[i].toUpperCase(); // Kelimenin i. indexindeki harfi alır ve büyük yapar

    // Harfe bağlı olarak puan ekliyoruz
    if ('AEIOULNRST'.contains(letter)) {
      score += 1;  // Sesli harfler ve bazı yaygın harfler (A, E, I, O, U, L, N, R, S, T) 1 puan alır
    } else if ('DG'.contains(letter)) {
      score += 2;  // D ve G harfleri 2 puan alır
    } else if ('BCMP'.contains(letter)) {
      score += 3;  // B, C, M ve P harfleri 3 puan alır
    } else if ('FHVWY'.contains(letter)) {
      score += 4;  // F, H, V, W ve Y harfleri 4 puan alır
    } else if (letter == 'K') {
      score += 5;  // K harfi 5 puan alır
    } else if ('JX'.contains(letter)) {
      score += 8;  // J ve X harfleri 8 puan alır
    } else if ('QZ'.contains(letter)) {
      score += 10;  // Q ve Z harfleri 10 puan alır
    }
  }

  return score;  // Hesaplanan skoru döndürüyoruz
}
