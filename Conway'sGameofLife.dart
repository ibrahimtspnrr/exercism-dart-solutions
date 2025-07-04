class GameOfLife {
  List<List<int>> _board;

  GameOfLife(List<List<int>> input)
      : _board = input.map((row) => List<int>.from(row)).toList();

  void tick() {
    int rows = _board.length;
    if (rows == 0) return;
    int cols = _board[0].length;

    List<List<int>> newBoard = List.generate(rows, (_) => List.filled(cols, 0));

    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < cols; j++) {
        int liveNeighbors = _countLiveNeighbors(i, j);
        if (_board[i][j] == 1) {
          if (liveNeighbors == 2 || liveNeighbors == 3) {
            newBoard[i][j] = 1;
          }
        } else {
          if (liveNeighbors == 3) {
            newBoard[i][j] = 1;
          }
        }
      }
    }

    _board = newBoard;
  }

  int _countLiveNeighbors(int row, int col) {
    int rows = _board.length;
    int cols = _board[0].length;
    int count = 0;

    for (int i = row - 1; i <= row + 1; i++) {
      for (int j = col - 1; j <= col + 1; j++) {
        if (i == row && j == col) continue;
        if (i >= 0 && i < rows && j >= 0 && j < cols) {
          count += _board[i][j];
        }
      }
    }

    return count;
  }

  List<List<int>> matrix() {
    return _board.map((row) => List<int>.from(row)).toList();
  }
}
