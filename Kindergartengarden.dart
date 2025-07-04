enum Plant {
  radishes,
  clover,
  violets,
  grass,
}

enum Student {
  Alice,
  Bob,
  Charlie,
  David,
  Eve,
  Fred,
  Ginny,
  Harriet,
  Ileana,
  Joseph,
  Kincaid,
  Larry,
}

class KindergartenGarden {
  final String row1;
  final String row2;

  static const List<Student> _studentsOrder = [
    Student.Alice,
    Student.Bob,
    Student.Charlie,
    Student.David,
    Student.Eve,
    Student.Fred,
    Student.Ginny,
    Student.Harriet,
    Student.Ileana,
    Student.Joseph,
    Student.Kincaid,
    Student.Larry,
  ];

  static const Map<String, Plant> _plantMap = {
    'R': Plant.radishes,
    'C': Plant.clover,
    'V': Plant.violets,
    'G': Plant.grass,
  };

  KindergartenGarden(String diagram)
      : row1 = diagram.split('\n')[0],
        row2 = diagram.split('\n')[1];

  List<Plant> plants(Student student) {
    final index = _studentsOrder.indexOf(student);
    final start = index * 2;

    return [
      _plantMap[row1[start]]!,
      _plantMap[row1[start + 1]]!,
      _plantMap[row2[start]]!,
      _plantMap[row2[start + 1]]!,
    ];
  }
}
