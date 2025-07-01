import 'dart:math';

class ResistorColorTrio {
  final List<String> colors = ['black', 'brown', 'red', 'orange', 'yellow','green', 'blue', 'violet', 'grey', 'white'];

  String label(List<String> inputColors) {
    int index1 = colors.indexOf(inputColors[0]);
    int index2 = colors.indexOf(inputColors[1]);
    int index3 = colors.indexOf(inputColors[2]);

    int result2 = (index1 * 10 + index2) * pow(10,index3).toInt();

    if (result2 >= 1000000000) 
    {
      return "${(result2 ~/ 1000000000)} gigaohms";
    } 
    else if (result2 >= 1000000) 
    {
      return "${(result2 ~/ 1000000)} megaohms";
    } 
    else if (result2 >= 1000) 
    {
      return "${(result2 ~/ 1000)} kiloohms";
    } 
    else
    {
      return "$result2 ohms";
    }
  }
}
