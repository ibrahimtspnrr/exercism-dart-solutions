class PascalsTriangle {
  List<List<int>> rows(int satirSayisi) {
    List<List<int>> ucgen = [];

    for (int i = 0; i < satirSayisi; i++) {
      List<int> satir = [];

      for (int j = 0; j <= i; j++) {
        if (j == 0 || j == i) {
          satir.add(1);
        } else {
          int oncekiSatirdanUstSol = ucgen[i - 1][j - 1];
          int oncekiSatirdanUst = ucgen[i - 1][j];
          satir.add(oncekiSatirdanUstSol + oncekiSatirdanUst);
        }
      }

      ucgen.add(satir);
    }

    return ucgen;
  }
}
