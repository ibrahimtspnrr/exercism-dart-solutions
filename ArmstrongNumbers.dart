class ArmstrongNumbers {
  bool isArmstrongNumber(String number) {
    int length = number.length;
    BigInt sum = BigInt.zero;

    for (int i = 0; i < length; i++) {
      int digit = int.parse(number[i]);
      sum += _bigIntPow(BigInt.from(digit), length);
    }

    return sum == BigInt.parse(number);
  }

  BigInt _bigIntPow(BigInt base, int exponent) {
    BigInt result = BigInt.one;
    for (int i = 0; i < exponent; i++) {
      result *= base;
    }
    return result;
  }
} 