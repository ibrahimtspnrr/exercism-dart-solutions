class HighScores {
  final List<int> scores;

  HighScores(this.scores);

  int latest() {
    return scores.last;
  }

  int personalBest() {
    return scores.reduce((a, b) => a > b ? a : b);
  }

  List<int> personalTopThree() {
    // Yeni liste oluşturup sıralayıp ilk 3 elemanı döndür
    List<int> sortedScores = List.from(scores);
    sortedScores.sort((a, b) => b.compareTo(a)); // büyükten küçüğe
    return sortedScores.take(3).toList();
  }
}
