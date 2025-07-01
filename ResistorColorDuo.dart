class ResistorColorDuo {
  final List<String> colors = [ 'black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'grey', 'white' ];

  int value(List<String> inputColors) {
    int index1 = colors.indexOf(inputColors[0]);
    int index2 = colors.indexOf(inputColors[1]);
    return index1 * 10 + index2;
  }
}
