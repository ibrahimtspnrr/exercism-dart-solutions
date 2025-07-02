class MatchingBrackets {
  bool isPaired(String input) {
    List<String> stack = [];
    Map<String, String> pairs = 
    {
      ')': '(',
      ']': '[',
      '}': '{',
    };

    for (int i = 0; i < input.length; i++) 
    {
      String char = input[i];

      // Açılış parantezleri eklenir
      if (char == '(' || char == '[' || char == '{') 
      {
        stack.add(char);
      }

      // Kapanış parantezi varsa
      else if (char == ')' || char == ']' || char == '}') 
      {
        // Stack boşsa eşleşecek parantez yok
        if (stack.isEmpty) return false;

        // En son eklenen parantezi al
        String last = stack.removeLast();

        // Eşleşme yanlışsa false
        if (last != pairs[char]) return false;
      }

      // Diğer karakterleri (harf, rakam, boşluk vb.) yok say
    }

    // Eğer stack boşsa tüm parantezler doğru şekilde eşleşmiş
    return stack.isEmpty;
  }
}