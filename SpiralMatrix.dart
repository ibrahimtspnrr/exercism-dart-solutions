class SpiralMatrix {
  final int size;
  late final List<List<int>> _matrix;

  SpiralMatrix(this.size) {
    _matrix = List.generate(size, (_) => List.filled(size, 0));
    _fillSpiral();
  }

  void _fillSpiral() {
    if (size == 0) return;

    int top = 0;
    int bottom = size - 1;
    int left = 0;
    int right = size - 1;
    int num = 1;

    while (top <= bottom && left <= right) {
      // Left to right
      for (int col = left; col <= right; col++) {
        _matrix[top][col] = num++;
      }
      top++;

      // Top to bottom
      for (int row = top; row <= bottom; row++) {
        _matrix[row][right] = num++;
      }
      right--;

      // Right to left
      if (top <= bottom) {
        for (int col = right; col >= left; col--) {
          _matrix[bottom][col] = num++;
        }
        bottom--;
      }

      // Bottom to top
      if (left <= right) {
        for (int row = bottom; row >= top; row--) {
          _matrix[row][left] = num++;
        }
        left++;
      }
    }
  }

  List<List<int>> toList() => _matrix;
}
