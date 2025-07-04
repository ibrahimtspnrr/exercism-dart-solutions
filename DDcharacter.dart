import 'dart:math';

class DndCharacter {
  final int strength;
  final int dexterity;
  final int constitution;
  final int intelligence;
  final int wisdom;
  final int charisma;
  final int hitpoints;

  DndCharacter._({
    required this.strength,
    required this.dexterity,
    required this.constitution,
    required this.intelligence,
    required this.wisdom,
    required this.charisma,
    required this.hitpoints,
  });

  /// Yetenek puanı için 4 tane 6’lık zar atılır, en düşük olan çıkarılır.
  static int ability() {
    final random = Random();
    final rolls = List.generate(4, (_) => random.nextInt(6) + 1);
    rolls.sort();
    return rolls.sublist(1).reduce((a, b) => a + b); // en küçük çıkarıldı
  }

  /// Yetenek puanından modifikasyon değeri hesaplanır.
  static int modifier(int score) => ((score - 10) / 2).floor();

  /// Yeni karakter üretir.
  static DndCharacter create() {
    final str = ability();
    final dex = ability();
    final con = ability();
    final intell = ability();
    final wis = ability();
    final cha = ability();
    final hp = 10 + modifier(con);
    return DndCharacter._(
      strength: str,
      dexterity: dex,
      constitution: con,
      intelligence: intell,
      wisdom: wis,
      charisma: cha,
      hitpoints: hp,
    );
  }
}
