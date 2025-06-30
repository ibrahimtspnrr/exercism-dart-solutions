class Bob {
  String response(String input) {
    final trimmed = input.trim();//Kullanıcının Bob’a söylediği şeyin başındaki ve sonundaki boşlukları temizler

    if (trimmed.isEmpty) return 'Fine. Be that way!';

    final isQuestion = trimmed.endsWith('?');  //Cümle soru işaretiyle mi bitiyor?
    final isShouting = trimmed == trimmed.toUpperCase() && trimmed.contains(RegExp(r'[A-Z]')); //Kullanıcının yazdığı tüm harfler büyük harf mi? ,Aynı zamanda içinde en az bir harf var mı?

    if (isShouting && isQuestion) return "Calm down, I know what I'm doing!";
    if (isShouting) return "Whoa, chill out!";
    if (isQuestion) return "Sure.";
    return "Whatever.";
  }
}