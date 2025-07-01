class Allergies {
  final Map<String, int> Allergy = {
    'eggs': 1,
    'peanuts': 2,
    'shellfish': 4,
    'strawberries': 8,
    'tomatoes': 16,
    'chocolate': 32,
    'pollen': 64,
    'cats': 128,
  };

  bool allergicTo(String allergen, int score) {
    return (score & Allergy[allergen]!) != 0;
  }

  List<String> list(int score) {
    List<String> result = [];
    for (var entry in Allergy.entries) {
      if ((score & entry.value) != 0) {
        result.add(entry.key);
      }
    }
    return result;
  }
}
