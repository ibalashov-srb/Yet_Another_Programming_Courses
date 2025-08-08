import 'dart:io';

void main() {
  print("Введи свой возраст в годах");
  var input = stdin.readLineSync();

  if (input != null) {
    double years = 0;

    try {
      years = double.parse(input); // "123" - 123
    } catch(e) {
      print("Возраст должен быть целым числом!");
      return;
    }

    double ageInMonth = years * 12;
    print("Твой примерный возраст в месяцах - ${ageInMonth}");
  }
}

