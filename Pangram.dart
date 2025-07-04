class Pangram {
  // Bu fonksiyon, verilen stringin bir pangram olup olmadığını kontrol eder.
  bool isPangram(String input) {
    // İngilizce alfabesindeki tüm harfleri tutan bir string
    const String alfabe = 'abcdefghijklmnopqrstuvwxyz';

    // Tekrar eden harflerin yalnızca bir kez sayılmasını sağlamak için set kullanıyoruz
    Set<String> harfler = {};  

    // Tüm karakterleri küçük harfe çeviriyoruz
    input = input.toLowerCase();  

    // Verilen stringin her bir karakterini kontrol ediyoruz
    for (int i = 0; i < input.length; i++) {  
      String karakter = input[i];

      // Eğer karakter alfabe içinde varsa, set'e ekliyoruz
      if (alfabe.contains(karakter)) { 
        harfler.add(karakter);
      }
    }

    // Eğer tüm 26 harf set içinde varsa, bu bir pangramdır
    return harfler.length == 26;  
  }
}
