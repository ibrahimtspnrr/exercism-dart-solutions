class HighScores {
  final List<int> scores; // Yüksek skorların tutulduğu liste

  // Yapıcı fonksiyon ile skorları alıyoruz
  HighScores(this.scores);

  // Son skoru döndüren fonksiyon
  int latest() {
    // 'scores.last' ile listenin son elemanını alıyoruz, yani en son eklenen skoru
    return scores.last;
  }

  // Kişisel en yüksek skoru döndüren fonksiyon
  int personalBest() {
    // 'reduce' fonksiyonu ile listedeki tüm elemanları karşılaştırarak en büyüğünü buluyoruz
    return scores.reduce((a, b) => a > b ? a : b);
  }

  // Kişisel en yüksek 3 skoru döndüren fonksiyon
  List<int> personalTopThree() {
    // İlk olarak skorları kopyalayarak sıralamayı orijinal listeyi değiştirmeden yapıyoruz
    List<int> sortedScores = List.from(scores);

    // Skorları büyükten küçüğe sıralıyoruz
    sortedScores.sort((a, b) => b.compareTo(a));

    // Sıralanan listeden ilk 3 skoru alıyoruz
    return sortedScores.take(3).toList();
  }
}
