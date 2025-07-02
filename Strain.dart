class Strain {
  List<T> keep<T>(List<T> items, bool Function(T) predicate) {
    List<T> result = [];

    for (int i = 0; i < items.length; i++) {
      if (predicate(items[i])) {
        result.add(items[i]);
      }
    }

    return result;
  }

  List<T> discard<T>(List<T> items, bool Function(T) predicate) {
    List<T> result = [];

    for (int i = 0; i < items.length; i++) {
      if (!predicate(items[i])) {
        result.add(items[i]);
      }
    }

    return result;
  }
}
