import 'dart:io';

void main() {
  print("Введи через пробел сколько тебе лет и месяцев");

  // 12 6  
  var input = stdin.readLineSync(); // функция для ввода данных пользователем из консоли

  var age = input!.split(" "); // функция для разбития строчки по знаку пробел -> " " 
  var yearString = "";
  var monthString = "";

  try {
    yearString = age[0];
    monthString = age[1];
  } catch (e) {
    print("Неверный формат ввода: не верное количество чисел");
    return;
  }

  int year = 0;
  int month = 0;
  try {
    year = int.parse(yearString);
    month = int.parse(monthString);
  } catch (e) {
    print("Неверный формат ввода: введены не числа");
    return;
  }

  int ageInMonth = year * 12 + month;
  print("Твой примерный возраст в месяцах - ${ageInMonth}");
}