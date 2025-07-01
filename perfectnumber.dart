enum Classification { perfect, abundant, deficient }

class PerfectNumbers {
  Classification classify(int number) 
  {
    if (number <= 0) 
    {
      throw ArgumentError("Only positive integers are allowed.");
    }

    int sum=0;
    for (int i = 1; i <= number; i++) {
    if (number % i == 0) {
      if (number!=i)
      {
        sum=sum+i;
      }  
  }
      
}

    if (sum == number)
    {
      return Classification.perfect;
    }
      
    if (sum > number)
    {
      return Classification.abundant;
    }
    else
    {
      return Classification.deficient;
    }
    
  }
}
