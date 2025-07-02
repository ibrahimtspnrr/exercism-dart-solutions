class Pangram {
  bool isPangram(String input) {
    const String alfabe = 'abcdefghijklmnopqrstuvwxyz';
    Set<String> harfler = {};  // set kullanılma sebebi liste birden fazla harf varsa siler 

    
    input = input.toLowerCase();  // Tüm karakterleri küçük harfe çevirir

    
    for (int i = 0; i < input.length; i++) {  // Her karakteri tek tek kontrol et
      String karakter = input[i];

      
      if (alfabe.contains(karakter)) { // Eğer bu karakter alfabe içinde varsa, sete ekle
        harfler.add(karakter);
      }
    }

    
    return harfler.length == 26;  
  }
}
