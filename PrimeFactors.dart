class PrimeFactors {
  List<int> factors(int number) {  // sonunda bir liste dönecek
    List<int> result = [];   // boş bir liste elemanları atmak için
    int divisor = 2;

    while (number > 1) {
      while (number % divisor == 0) {
        result.add(divisor);
        number = number~/divisor;
      }
      divisor++;
    }

    return result;
  }
}
