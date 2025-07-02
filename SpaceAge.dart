class SpaceAge {
  double age({required String planet, required int seconds}) {
   
    const double earthYearInSeconds = 31557600;
    double katsayi;

    if (planet == 'Earth') 
    {
      katsayi = 1.0;
    } 
    else if (planet == 'Mercury') 
    {
      katsayi = 0.2408467;
    } 
    else if (planet == 'Venus') 
    {
      katsayi = 0.61519726;
    } 
    else if (planet == 'Mars') 
    {
      katsayi = 1.8808158;
    } 
    else if (planet == 'Jupiter') 
    {
      katsayi = 11.862615;
    } 
    else if (planet == 'Saturn') 
    {
      katsayi = 29.447498;
    } 
    else if (planet == 'Uranus') 
    {
      katsayi = 84.016846;
    } 
    else if (planet == 'Neptune') 
    {
      katsayi = 164.79132;
    } 
    else {
      throw ArgumentError('Geçersiz gezegen adi: $planet');
    }

    double result = seconds / (earthYearInSeconds * katsayi);
    return double.parse(result.toStringAsFixed(2));
  }
}
