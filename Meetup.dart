class Meetup {
  static const Map<String, int> _weekdayMap = {
    'Monday': DateTime.monday,
    'Tuesday': DateTime.tuesday,
    'Wednesday': DateTime.wednesday,
    'Thursday': DateTime.thursday,
    'Friday': DateTime.friday,
    'Saturday': DateTime.saturday,
    'Sunday': DateTime.sunday,
  };

  String meetup({
    required int year,
    required int month,
    required String week,
    required String dayofweek,
  }) {
    final targetWeekday = _weekdayMap[dayofweek]!;

    DateTime? date;

    if (week == 'teenth') {
      // 13–19 arasında kontrol et
      for (int day = 13; day <= 19; day++) {
        final d = DateTime(year, month, day);
        if (d.weekday == targetWeekday) {
          date = d;
          break;
        }
      }
    } else if (week == 'last') {
      final lastDay = DateTime(year, month + 1, 0).day; // ayın son günü
      for (int day = lastDay; day >= lastDay - 6; day--) {
        final d = DateTime(year, month, day);
        if (d.weekday == targetWeekday) {
          date = d;
          break;
        }
      }
    } else {
      final weekOrder = {
        'first': 1,
        'second': 2,
        'third': 3,
        'fourth': 4,
      };

      final order = weekOrder[week]!;
      int count = 0;
      for (int day = 1; day <= 31; day++) {
        try {
          final d = DateTime(year, month, day);
          if (d.month != month) break; // ayı geçtiyse dur
          if (d.weekday == targetWeekday) {
            count++;
            if (count == order) {
              date = d;
              break;
            }
          }
        } catch (_) {
          break; // ayın sonuna ulaşıldı
        }
      }
    }

    return "${date!.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}";
  }
}
