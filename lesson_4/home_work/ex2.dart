void main() {
  // Тест 1
  List<int> test1 = [1, 2, 3, 4, 5, 6];
  print('Test 1: ${listEquals(getEvenNumbers(test1), [2, 4, 6]) ? 'Passed' : 'Failed'}');

  // Тест 2
  List<int> test2 = [10, 15, 20, 25];
  print('Test 2: ${listEquals(getEvenNumbers(test2), [10, 20]) ? 'Passed' : 'Failed'}');

  // Тест 3
  List<int> test3 = [1, 3, 5];
  print('Test 3: ${listEquals(getEvenNumbers(test3), []) ? 'Passed' : 'Failed'}');

  // Тест 4
  List<int> test4 = [];
  print('Test 4: ${listEquals(getEvenNumbers(test4), []) ? 'Passed' : 'Failed'}');
}

// TODO: Напиши реализацию функции ниже
List<int> getEvenNumbers(List<int> numbers) {
  // Примерный скелет:
  // List<int> result = [];
  // for (...) {
  //   if (...) {
  //     ...
  //   }
  // }
  // return result;

  return []; // временная заглушка
}

// Вспомогательная функция для сравнения списков
bool listEquals(List<int> a, List<int> b) {
  if (a.length != b.length) return false;
  for (int i = 0; i < a.length; i++) {
    if (a[i] != b[i]) return false;
  }
  return true;
}
