/**
 * Ученики и оценки
 * Есть Map<String, List<int>>, где ключ — имя ученика, а значение — список оценок.
 * Напиши функцию getAverage(String name), которая возвращает среднюю оценку ученика (или "нет такого").
 */
void main() {
  Map<String, List<int>> grades = {
    'Anna': [5, 4, 5],
    'Oleg': [3, 4, 2],
    'Ivan': [5, 5, 5]
  };

  print(getAverage(grades, 'Anna') == 4.67 ? 'Test Anna Passed' : 'Test Anna Failed');
  print(getAverage(grades, 'Ivan') == 5.0 ? 'Test Ivan Passed' : 'Test Ivan Failed');
  print(getAverage(grades, 'NotExists') == null ? 'Test Null Passed' : 'Test Null Failed');
}

// TODO: реализуй функцию
double? getAverage(Map<String, List<int>> grades, String name) {
  // Здесь должен быть твой код
  return null;
}
