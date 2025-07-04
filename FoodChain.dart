class FoodChain {
  static const List<String> animals = [
    "fly",
    "spider",
    "bird",
    "cat",
    "dog",
    "goat",
    "cow",
    "horse"
  ];

  static const Map<String, String> comments = {
    "spider": "It wriggled and jiggled and tickled inside her.",
    "bird": "How absurd to swallow a bird!",
    "cat": "Imagine that, to swallow a cat!",
    "dog": "What a hog, to swallow a dog!",
    "goat": "Just opened her throat and swallowed a goat!",
    "cow": "I don't know how she swallowed a cow!",
    "horse": "She's dead, of course!"
  };

  static const Map<String, String> catchModifiers = {
    "spider": "spider that wriggled and jiggled and tickled inside her"
  };

  List<String> recite(int startVerse, int endVerse) {
    final List<String> lines = [];

    for (int i = startVerse - 1; i < endVerse; i++) {
      final String animal = animals[i];

      lines.add("I know an old lady who swallowed a $animal.");

      if (comments.containsKey(animal)) {
        lines.add(comments[animal]!);
      }

      if (animal != "horse") {
        for (int j = i; j > 0; j--) {
          final predator = animals[j];
          final prey = animals[j - 1];
          final preyDesc = catchModifiers.containsKey(prey) ? catchModifiers[prey]! : prey;
          lines.add("She swallowed the $predator to catch the $preyDesc.");
        }
        lines.add("I don't know why she swallowed the fly. Perhaps she'll die.");
      }

      if (i < endVerse - 1) {
        lines.add("");
      }
    }

    return lines;
  }
}
