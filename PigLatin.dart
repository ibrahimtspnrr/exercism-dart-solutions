
String translate(String phrase) {
  return phrase
      .split(' ')
      .map((word) => _translateWord(word))
      .join(' ');
}

String _translateWord(String word) {
  final vowels = ['a', 'e', 'i', 'o', 'u'];
  final specialVowelPrefixes = ['xr', 'yt'];

  // Rule 1: Vowel or special cases
  if (vowels.contains(word[0]) || specialVowelPrefixes.any((p) => word.startsWith(p))) {
    return '${word}ay';
  }

  // Rule 3: Consonant(s) followed by 'qu'
  final quMatch = RegExp(r'^([^aeiou]*qu)').firstMatch(word);
  if (quMatch != null) {
    final prefix = quMatch.group(1)!;
    final rest = word.substring(prefix.length);
    return '${rest}${prefix}ay';
  }

  // Rule 4: Starts with consonants and then 'y'
  final yMatch = RegExp(r'^([^aeiou]+)(y.*)').firstMatch(word);
  if (yMatch != null) {
    return '${yMatch.group(2)}${yMatch.group(1)}ay';
  }

  // Rule 2: Move initial consonant cluster to end
  final consonantMatch = RegExp(r'^([^aeiou]+)(.*)').firstMatch(word);
  if (consonantMatch != null) {
    return '${consonantMatch.group(2)}${consonantMatch.group(1)}ay';
  }

  return '${word}ay';
}
