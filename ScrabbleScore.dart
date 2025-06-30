int score(String word) {
  int score = 0;

  for (int i = 0; i < word.length; i++) {
    
    String letter = word[i].toUpperCase(); // kelimenin i. indexindeki harfi alır ve büyük yapar ve bunu lettera eşitler
   // devamında da o harf hangi koşulda var ise kontrol edilir, değer score a eklenir

    if ('AEIOULNRST'.contains(letter)) 
    {
      score += 1;
    } else if ('DG'.contains(letter)) 
    {
      score += 2;
    } else if ('BCMP'.contains(letter)) 
    {
      score += 3;
    } else if ('FHVWY'.contains(letter)) 
    {
      score += 4;
    } else if (letter == 'K') 
    {
      score += 5;
    } else if ('JX'.contains(letter)) 
    {
      score += 8;
    } else if ('QZ'.contains(letter)) 
    {
      score += 10;
    }
  }

  return score;
}