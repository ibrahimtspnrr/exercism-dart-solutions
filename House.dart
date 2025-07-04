class House {
  final List<String> _subjects = [
    'the horse and the hound and the horn',
    'the farmer sowing his corn',
    'the rooster that crowed in the morn',
    'the priest all shaven and shorn',
    'the man all tattered and torn',
    'the maiden all forlorn',
    'the cow with the crumpled horn',
    'the dog',
    'the cat',
    'the rat',
    'the malt',
    'the house that Jack built.',
  ];

  final List<String> _actions = [
    'that belonged to',
    'that kept',
    'that woke',
    'that married',
    'that kissed',
    'that milked',
    'that tossed',
    'that worried',
    'that killed',
    'that ate',
    'that lay in',
    '', // for the last line
  ];

  String recite(int startVerse, int endVerse) {
    final result = <String>[];

    for (int verse = startVerse; verse <= endVerse; verse++) {
      final index = 12 - verse;
      final lines = <String>[];
      lines.add('This is ${_subjects[index]}');

      for (int i = index + 1; i < 12; i++) {
        lines.add('${_actions[i - 1]} ${_subjects[i]}');
      }

      result.add(lines.join(' '));
    }

    return result.join('\n');
  }
}
