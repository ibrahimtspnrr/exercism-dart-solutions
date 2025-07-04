// ValueNotFoundException sınıfı, arama sonucu değer bulunamadığında özel bir hata fırlatmak için kullanılır.
class ValueNotFoundException implements Exception {
  String message;  // Hata mesajı

  // Bu, hata mesajını belirleyen yapıcı fonksiyon
  ValueNotFoundException(this.message);
}

// BinarySearch sınıfı, sıralı bir liste üzerinde ikili arama (binary search) yapar.
class BinarySearch {
  final List<int> list;  // Arama yapılacak liste

  // BinarySearch sınıfının yapıcı fonksiyonu, listeyi alır ve list ile başlatılır.
  BinarySearch(this.list);

  // BinarySearch algoritması, hedef değeri bulmaya çalışır.
  int find(int target) {
    int low = 0;  // Listenin başlangıç index'i
    int high = list.length - 1;  // Listenin son index'i

    // Arama, low ile high arasındaki indexler geçerli olduğu sürece devam eder
    while (low <= high) {
      // Orta noktayı buluyoruz
      int mid = (low + high) ~/ 2;  // Sağlam bir şekilde orta noktayı hesaplamak için // operatörünü kullanıyoruz

      // Orta noktadaki değer, hedef değeri bulduysa, index'i döndürüyoruz
      if (list[mid] == target) {
        return mid;
      } 
      // Eğer orta noktadaki değer hedeften küçükse, aramaya sağdaki yarıda devam ediyoruz
      else if (list[mid] < target) {
        low = mid + 1;
      } 
      // Eğer orta noktadaki değer hedeften büyükse, aramaya soldaki yarıda devam ediyoruz
      else {
        high = mid - 1;
      }
    }

    // Eğer hedef değer listede bulunmazsa, ValueNotFoundException fırlatıyoruz
    throw ValueNotFoundException("Value not in array");
  }
}
