enum Classification { equal, sublist, superlist, unequal }

class Sublist {
  Classification sublist(List<int> listOne, List<int> listTwo) {
    // Eşitlik kontrolü
    if (_areEqual(listOne, listTwo)) {
      return Classification.equal;
    }

    // listOne, listTwo'nun alt listesi mi?
    if (_isSublist(listOne, listTwo)) {
      return Classification.sublist;
    }

    // listTwo, listOne'un alt listesi mi?
    if (_isSublist(listTwo, listOne)) {
      return Classification.superlist;
    }

    // Diğer tüm durumlarda
    return Classification.unequal;
  }

  bool _areEqual(List<int> a, List<int> b) {  //liste uzunlukları eşit değilse direkt biter devamında sıra sıra kontrol eder
    if (a.length != b.length) return false;
    for (int i = 0; i < a.length; i++) {
      if (a[i] != b[i]) return false;
    }
    return true;
  }

  bool _isSublist(List<int> small, List<int> big) {
    if (small.isEmpty) return true;
    if (small.length > big.length) return false;

    for (int i = 0; i <= big.length - small.length; i++) {
      bool match = true;
      for (int j = 0; j < small.length; j++) {
        if (big[i + j] != small[j]) {
          match = false;
          break;
        }
      }
      if (match) return true;
    }

    return false;
  }
}
