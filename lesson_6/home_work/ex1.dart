/**
 * Подсказка для студентов:
 * Каждый элемент people — это Map<String, String?>.
 * Нужно перебрать список for (var person in people).
 * Сначала проверить person['name'] == name.
 * Если да — вернуть person['email'].
 * Если не нашли — вернуть null.
 */
void main() {
  List<Map<String, String?>> people = [
    {'name': 'Anna', 'email': 'anna@mail.com'},
    {'name': 'Ivan', 'email': null},
    {'name': 'Oleg', 'email': 'oleg@mail.com'}
  ];

  print(getEmailByName(people, 'Anna') == 'anna@mail.com' ? 'Test 1 Passed' : 'Test 1 Failed');
  print(getEmailByName(people, 'Ivan') == null ? 'Test 2 Passed' : 'Test 2 Failed');
  print(getEmailByName(people, 'Maria') == null ? 'Test 3 Passed' : 'Test 3 Failed');
}

// TODO: Реализуй функцию
String? getEmailByName(List<Map<String, String?>> people, String name) {
  // Здесь должен быть твой код
  return null;
}
