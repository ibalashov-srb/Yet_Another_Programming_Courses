import 'dart:math';

void main() {
  for (int i = 0; i < 15; i++) {
    var temp = getTemp();
    if (temp == null) {
      print("датчик сломан");
    } else {
      print("температура датчика = $temp");
    }
  }
}

int? getTemp() {
  var temp = Random().nextInt(10);
  if (temp > 5) {
    return null;
  }

  return temp;
}