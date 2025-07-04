class Leap {
  // Bu fonksiyon, verilen yılın artık yıl olup olmadığını kontrol eder.
  bool leapYear(int year) {
    // Eğer yıl 4 ile bölünemiyorsa, artık yıl değildir.
    if (year % 4 != 0) {
      return false;
    } 
    // Eğer yıl 100 ile bölünemiyorsa, artık yıl kabul edilir.
    else if (year % 100 != 0) {
      return true;
    } 
    // Eğer yıl 400 ile bölünüyorsa, artık yıldır.
    else if (year % 400 == 0) {
      return true;
    } 
    // Diğer durumlarda, artık yıl değildir.
    else {
      return false;
    }
  } 
}
