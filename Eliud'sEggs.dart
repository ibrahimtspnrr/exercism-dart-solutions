class EggCounter {
  // Bu fonksiyon, verilen sayının ikili (binary) temsilinde kaç tane 1 olduğunu sayar.
  int count(int number) {
    int total = 0;  // 1'lerin toplamını tutmak için bir sayaç oluşturuyoruz.

    // Sayı sıfırdan büyük olduğu sürece döngü devam eder.
    while (number > 0) {
      // Eğer sayı tekse (1'e bölündüğünde kalan 1 ise), sayacımızı bir arttırıyoruz.
      if (number % 2 == 1) {
        total++;
      }
      // Sayıyı ikiye bölerek bir sonraki bit değeri ile devam ediyoruz.
      // `~/` tam sayı bölmesi kullanıyoruz, böylece sayı bir tam sayıya dönüşür.
      number = number ~/ 2;
    }

    // Toplam 1'lerin sayısını döndürüyoruz.
    return total;
  }
}

void main() {
  final egg_counter = EggCounter();

  // 89 sayısının binary karşılığı 1011001'dir ve 1'lerin sayısı 5'tir.
  print(egg_counter.count(89));  // 5

  // 0 sayısının binary karşılığı 0'dır ve 1'ler yoktur.
  print(egg_counter.count(0));   // 0

  // 16 sayısının binary karşılığı 10000'dir ve 1'ler sadece bir kez görülür.
  print(egg_counter.count(16));  // 1

  // 2000000000 sayısının binary karşılığı çok büyük bir sayıdır, ancak burada da 1'lerin sayısını buluyoruz.
  print(egg_counter.count(2000000000)); // 16
}
