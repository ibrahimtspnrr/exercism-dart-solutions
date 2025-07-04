class Triangle {
  // Bu fonksiyon, üç kenarın geçerli bir üçgen oluşturup oluşturmadığını kontrol eder
  bool ValidTriangle(num a, num b, num c) {
    // Üçgenin kenar uzunlukları pozitif olmalı ve her iki kenarın toplamı, üçüncü kenara eşit veya büyük olmalı
    return a > 0 && b > 0 && c > 0 && a + b >= c && b + c >= a && a + c >= b;
  }

  // Bu fonksiyon, verilen üçgenin eşkenar olup olmadığını kontrol eder
  bool equilateral(num a, num b, num c) {
    // Geçerli bir üçgen değilse, eşkenar olamaz
    if (ValidTriangle(a, b, c) == false) {
      return false; 
    }
    // Üç kenar eşitse, eşkenar üçgendir
    return a == b && b == c;
  }

  // Bu fonksiyon, verilen üçgenin ikizkenar olup olmadığını kontrol eder
  bool isosceles(num a, num b, num c) {
    // Geçerli bir üçgen değilse, ikizkenar olamaz
    if (ValidTriangle(a, b, c) == false) {
      return false;  
    }
    // İki kenar eşitse, ikizkenar üçgendir
    return a == b || b == c || a == c;
  }

  // Bu fonksiyon, verilen üçgenin çeşitkenar olup olmadığını kontrol eder
  bool scalene(num a, num b, num c) {
    // Geçerli bir üçgen değilse, çeşitkenar olamaz
    if (ValidTriangle(a, b, c) == false) {
      return false; 
    }
    // Üç kenar birbirinden farklıysa, çeşitkenar üçgendir
    return a != b && b != c && a != c;
  }
}
