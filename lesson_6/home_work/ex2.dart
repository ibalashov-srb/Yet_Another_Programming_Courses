void main() {
  List<Map<String, String>> people = [
    {'name': 'Anna', 'job': 'Designer'},
    {'name': 'Ivan', 'job': 'Developer'},
    {'name': 'Oleg', 'job': 'Designer'},
    {'name': 'Vera', 'job': 'Manager'},
  ];

  List<String> result1 = getPeopleByJob(people, 'Designer');
  print(listEquals(result1, ['Anna', 'Oleg']) ? 'Test 1 Passed' : 'Test 1 Failed');

  List<String> result2 = getPeopleByJob(people, 'Developer');
  print(listEquals(result2, ['Ivan']) ? 'Test 2 Passed' : 'Test 2 Failed');

  List<String> result3 = getPeopleByJob(people, 'QA');
  print(listEquals(result3, []) ? 'Test 3 Passed' : 'Test 3 Failed');
}

// TODO: Реализуй функцию
List<String> getPeopleByJob(List<Map<String, String>> people, String job) {
  // Здесь должен быть твой код
  return [];
}

// Вспомогательная функция для сравнения списков
bool listEquals(List<String> a, List<String> b) {
  if (a.length != b.length) return false;
  for (int i = 0; i < a.length; i++) {
    if (a[i] != b[i]) return false;
  }
  return true;
}
