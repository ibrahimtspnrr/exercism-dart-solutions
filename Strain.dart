class Strain {
  // Bu fonksiyon, verilen listeden belirli bir koşulu sağlayan öğeleri döndürür
  List<T> keep<T>(List<T> items, bool Function(T) predicate) {
    List<T> result = [];  // Sonuçları tutacak bir liste oluşturuyoruz

    // Her öğe üzerinde döngü kuruyoruz
    for (int i = 0; i < items.length; i++) {
      // Eğer öğe koşula uyuyorsa, sonucu ekliyoruz
      if (predicate(items[i])) {
        result.add(items[i]);
      }
    }

    return result;  // Koşulu sağlayan öğeleri döndürüyoruz
  }

  // Bu fonksiyon, verilen listeden belirli bir koşulu sağlamayan öğeleri döndürür
  List<T> discard<T>(List<T> items, bool Function(T) predicate) {
    List<T> result = [];  // Sonuçları tutacak bir liste oluşturuyoruz

    // Her öğe üzerinde döngü kuruyoruz
    for (int i = 0; i < items.length; i++) {
      // Eğer öğe koşula uymuyorsa, sonucu ekliyoruz
      if (!predicate(items[i])) {
        result.add(items[i]);
      }
    }

    return result;  // Koşulu sağlamayan öğeleri döndürüyoruz
  }
}
