class MatchingBrackets {
  // Bu fonksiyon, verilen stringdeki parantezlerin eşleşip eşleşmediğini kontrol eder.
  bool isPaired(String input) {
    List<String> stack = [];  // Parantezleri geçici olarak saklayacağımız bir yığın (stack) oluşturuyoruz.
    
    // Kapanış parantezleri ile eşleşen açılış parantezlerini belirleyen bir harita (pairs) oluşturuyoruz.
    Map<String, String> pairs = {
      ')': '(',
      ']': '[',
      '}': '{',
    };

    // Stringin her bir karakterini sırayla kontrol ediyoruz.
    for (int i = 0; i < input.length; i++) {
      String char = input[i];

      // Açılış parantezlerini bulduğumuzda, stack'e ekliyoruz.
      if (char == '(' || char == '[' || char == '{') {
        stack.add(char);
      }

      // Kapanış parantezini bulduğumuzda:
      else if (char == ')' || char == ']' || char == '}') {
        // Eğer stack boşsa, eşleşecek açılış parantezi yok demektir, bu durumda false döndürürüz.
        if (stack.isEmpty) return false;

        // Stack'teki son eklenen açılış parantezini alıyoruz.
        String last = stack.removeLast();

        // Eğer son eklenen açılış parantezi, beklenen eşleşen kapanış paranteziyle uyuşmuyorsa, false döndürüyoruz.
        if (last != pairs[char]) return false;
      }

      // Diğer karakterleri (harf, rakam, boşluk vb.) kontrol etmiyoruz.
    }

    // Eğer tüm parantezler doğru şekilde eşleştiyse, stack boş olur.
    return stack.isEmpty;
  }
}
