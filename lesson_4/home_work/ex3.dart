void main() {
  // Тест 1
  List<int> test1 = [1, 2, 3, 2, 4];
  print('Test 1: ${findFirstDuplicate(test1) == 2 ? 'Passed' : 'Failed'}');

  // Тест 2
  List<int> test2 = [5, 1, 2, 3, 5, 6];
  print('Test 2: ${findFirstDuplicate(test2) == 5 ? 'Passed' : 'Failed'}');

  // Тест 3
  List<int> test3 = [9, 8, 7, 6];
  print('Test 3: ${findFirstDuplicate(test3) == null ? 'Passed' : 'Failed'}');

  // Тест 4
  List<int> test4 = [1, 1, 2, 2];
  print('Test 4: ${findFirstDuplicate(test4) == 1 ? 'Passed' : 'Failed'}');

  // Тест 5
  List<int> test5 = [];
  print('Test 5: ${findFirstDuplicate(test5) == null ? 'Passed' : 'Failed'}');
}

// TODO: Напиши реализацию функции ниже
int? findFirstDuplicate(List<int> numbers) {
  // Примерный скелет:
  // Заведи дополнительный список alreadySeen = []
  // Для каждого числа в numbers:
  //   - Проверь, есть ли оно в alreadySeen с помощью .contains()
  //   - Если есть — верни его
  //   - Если нет — добавь в alreadySeen
  // Если цикл закончился и ничего не найдено — верни null

  return null; // временная заглушка
}
