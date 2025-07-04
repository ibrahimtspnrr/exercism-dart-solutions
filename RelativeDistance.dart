class RelativeDistance {
  final Map<String, List<String>> _graph = {};

  RelativeDistance(Map<String, List<String>> familyTree) {
    // İki yönlü bağlantı kur: ebeveyn ↔ çocuk
    for (final entry in familyTree.entries) {
      final parent = entry.key;
      final children = entry.value;

      _graph.putIfAbsent(parent, () => []);
      for (final child in children) {
        _graph[parent]!.add(child);
        _graph.putIfAbsent(child, () => []).add(parent);
      }

      // Kardeş ilişkilerini oluştur
      for (int i = 0; i < children.length; i++) {
        for (int j = i + 1; j < children.length; j++) {
          _graph[children[i]]!.add(children[j]);
          _graph[children[j]]!.add(children[i]);
        }
      }
    }
  }

  int degreesOfSeparation(String start, String end) {
    if (start == end) return 0;
    if (!_graph.containsKey(start) || !_graph.containsKey(end)) return -1;

    final queue = <String>[start];
    final visited = <String>{start};
    final distance = <String, int>{start: 0};

    while (queue.isNotEmpty) {
      final current = queue.removeAt(0);
      for (final neighbor in _graph[current]!) {
        if (visited.contains(neighbor)) continue;

        visited.add(neighbor);
        queue.add(neighbor);
        distance[neighbor] = distance[current]! + 1;

        if (neighbor == end) {
          return distance[neighbor]!;
        }
      }
    }

    return -1; // Bağlantı yok
  }
}
