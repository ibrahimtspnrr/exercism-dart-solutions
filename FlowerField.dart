class FlowerField {
  final List<String> _input;

  FlowerField(this._input);

  List<String> get annotated {
    final rows = _input.length;
    if (rows == 0) return [];

    final cols = _input[0].length;
    if (cols == 0) return [''];

    List<List<String>> field = _input.map((line) => line.split('')).toList();

    List<List<String>> result = List.generate(rows, (_) => List.filled(cols, ' '));

    for (int r = 0; r < rows; r++) {
      for (int c = 0; c < cols; c++) {
        if (field[r][c] == '*') {
          result[r][c] = '*';
          continue;
        }

        int count = 0;
        for (int dr = -1; dr <= 1; dr++) {
          for (int dc = -1; dc <= 1; dc++) {
            if (dr == 0 && dc == 0) continue;
            int nr = r + dr;
            int nc = c + dc;

            if (nr >= 0 && nr < rows && nc >= 0 && nc < cols && field[nr][nc] == '*') {
              count++;
            }
          }
        }

        if (count > 0) {
          result[r][c] = count.toString();
        }
      }
    }

    return result.map((row) => row.join()).toList();
  }
}
