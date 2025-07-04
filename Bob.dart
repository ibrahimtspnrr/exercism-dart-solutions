class Bob {
  // Bu fonksiyon, Bob'un kullanıcıya verdiği cevabı döndüren fonksiyondur.
  String response(String input) {
    // Kullanıcının söylediği cümlenin başındaki ve sonundaki boşlukları temizliyoruz.
    // Bu, gereksiz boşlukların cevap üzerinde etkisi olmasını engeller.
    final trimmed = input.trim();

    // Eğer kullanıcı hiçbir şey söylemediyse, boş bir cümle bırakmışsa, Bob'un cevabı şöyle olacak:
    if (trimmed.isEmpty) return 'Fine. Be that way!';

    // Cümle soru işaretiyle bitiyorsa, isQuestion değişkeni true olur.
    final isQuestion = trimmed.endsWith('?');  // Soru işaretiyle bitiyor mu?

    // Cümle büyük harflerle yazılmışsa, isShouting true olur. Ayrıca içinde en az bir harf bulunmalıdır.
    final isShouting = trimmed == trimmed.toUpperCase() && trimmed.contains(RegExp(r'[A-Z]')); 
    // Eğer cümlede sadece büyük harfler varsa ve cümlede en az bir harf varsa, Bob bunu bağırma olarak algılar.

    // Bob'un cevabı, durumların kombinasyonlarına göre değişir:
    
    // Eğer kullanıcı hem bağırıyorsa hem de soru soruyorsa, cevap şu olur:
    if (isShouting && isQuestion) return "Calm down, I know what I'm doing!";

    // Eğer kullanıcı sadece bağırıyorsa, cevap şu olur:
    if (isShouting) return "Whoa, chill out!";

    // Eğer kullanıcı sadece soru soruyorsa, cevap şu olur:
    if (isQuestion) return "Sure.";

    // Diğer tüm durumlar için Bob'un cevabı şu olacaktır:
    return "Whatever.";
  }
}
