class RunLengthEncoder {
  String encode(String input) {
    if (input.isEmpty) return '';

    final buffer = StringBuffer();
    int count = 1;

    for (int i = 1; i <= input.length; i++) {
      if (i < input.length && input[i] == input[i - 1]) {
        count++;
      } else {
        if (count > 1) {
          buffer.write('$count${input[i - 1]}');
        } else {
          buffer.write(input[i - 1]);
        }
        count = 1;
      }
    }

    return buffer.toString();
  }

  String decode(String input) {
    final buffer = StringBuffer();
    final regex = RegExp(r'(\d*)(\D)');

    for (final match in regex.allMatches(input)) {
      final count = match.group(1)!.isEmpty ? 1 : int.parse(match.group(1)!);
      final char = match.group(2)!;
      buffer.write(char * count);
    }

    return buffer.toString();
  }
}
