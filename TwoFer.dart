String twoFer([String? name]) {
  // Eğer 'name' parametresi null veya boş ise
  if (name == null || name.isEmpty) {
    return "One for you, one for me.";  // Default mesaj
  } else {
    return "One for $name, one for me.";  // Kullanıcı adı verilirse, kişiye özel mesaj
  }
}

void main() {
  // Parametre verilmediğinde çalıştırma
  print(twoFer());  // "One for you, one for me."

  // Parametre olarak "alice" verildiğinde çalıştırma
  print(twoFer("alice"));  // "One for alice, one for me."

  // Parametre olarak "bohdan" verildiğinde çalıştırma
  print(twoFer("bohdan"));  // "One for bohdan, one for me."
}
