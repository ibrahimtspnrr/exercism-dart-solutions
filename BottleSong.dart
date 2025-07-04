class BottleSong {
  final List<String> numbersInWords = [
    'no', 'one', 'two', 'three', 'four', 'five',
    'six', 'seven', 'eight', 'nine', 'ten'
  ];

  List<String> recite(int start, int take) {
    final List<String> result = [];

    for (int i = 0; i < take; i++) {
      int current = start - i;
      int next = current - 1;

      String currentWord = _capitalize(numbersInWords[current]);
      String nextWord = next >= 0 ? numbersInWords[next] : 'no';

      String currentBottle = current == 1 ? 'bottle' : 'bottles';
      String nextBottle = next == 1 ? 'bottle' : 'bottles';

      result.add('$currentWord green $currentBottle hanging on the wall,');
      result.add('$currentWord green $currentBottle hanging on the wall,');
      result.add('And if one green bottle should accidentally fall,');
      result.add("There'll be $nextWord green $nextBottle hanging on the wall.");

      if (i != take - 1) {
        result.add('');
      }
    }

    return result;
  }

  String _capitalize(String word) {
    return word[0].toUpperCase() + word.substring(1);
  }
}
