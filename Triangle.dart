class Triangle {
  bool ValidTriangle(num a, num b, num c) {
    return a > 0 && b > 0 && c > 0 && a + b >= c && b + c >= a && a + c >= b;
  }

  bool equilateral(num a, num b, num c) {
    if (ValidTriangle(a, b, c)==false)
    {
     return false; 
    }  
    return a == b && b == c;
  }

  bool isosceles(num a, num b, num c) {
    if (ValidTriangle(a, b, c)==false)
    {
    return false;  
    }
    return a == b || b == c || a == c;
  }

  bool scalene(num a, num b, num c) {
    if (ValidTriangle(a, b, c)==false)
    {
     return false; 
    }
    return a != b && b != c && a != c;
  }
}
