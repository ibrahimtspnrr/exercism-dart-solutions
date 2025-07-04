String reverse(String input) {
  String reversed = '';  // Geriye doğru çevrilecek string

  // Verilen stringin son karakterinden başlayarak tersine doğru gidiyoruz
  for (int i = input.length - 1; i >= 0; i--) {
    reversed += input[i];  // Karakteri ters sıraya ekliyoruz
  }

  return reversed;  // Ters çevrilmiş stringi döndürüyoruz
}
