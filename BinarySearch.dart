class ValueNotFoundException implements Exception {
  String message;
  ValueNotFoundException(this.message);
}

class BinarySearch {
  final List<int> list;
  BinarySearch(this.list);

  int find(int target) {
    int low = 0;
    int high = list.length - 1;

    while (low <= high) {
      int mid = (low + high) ~/ 2;
      if (list[mid] == target) {
        return mid;
      } else if (list[mid] < target) {
        low = mid + 1;
      } else {
        high = mid - 1;
      }
    }

    throw ValueNotFoundException("Value not in array");
  }
}
