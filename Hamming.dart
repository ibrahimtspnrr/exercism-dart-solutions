class Hamming {
  int calculate(String str1, String str2)
  {
    if(str1.length!=str2.length)
    throw ArgumentError("strands must be of equal length");

    int counter=0;
    for(int i=0; i<str1.length;i++)
    {
      if(str1[i]!=str2[i])
      {
        counter++;
      }
    }
    return counter;

  }

}