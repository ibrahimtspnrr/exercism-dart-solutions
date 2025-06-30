class EggCounter {
  int count(int number) {
    int total = 0;

    while (number > 0) {
      if (number % 2 == 1) {
        total++;
      }
      number = number ~/ 2;
    }

    return total;
  }
}
void main() {
  final egg_counter = EggCounter();

  print(egg_counter.count(89));         
  print(egg_counter.count(0));          
  print(egg_counter.count(16));         
  print(egg_counter.count(2000000000)); 
}