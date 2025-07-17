void main() {
  // Тест 1
  List<int> test1 = [1, 2, 3, 4, 5];
  print('Test 1: ${findMax(test1) == 5 ? 'Passed' : 'Failed'}');

  // Тест 2
  List<int> test2 = [99, 100, 88, 77];
  print('Test 2: ${findMax(test2) == 100 ? 'Passed' : 'Failed'}');

  // Тест 3
  List<int> test3 = [-5, -10, -3, -1];
  print('Test 3: ${findMax(test3) == -1 ? 'Passed' : 'Failed'}');

  // Тест 4
  List<int> test4 = [42];
  print('Test 4: ${findMax(test4) == 42 ? 'Passed' : 'Failed'}');
}

// TODO: Напиши реализацию функции ниже
int findMax(List<int> numbers) {
  // примерный скелет
  // int max = numbers[0];
  // for (...) {
  //   if (...) {
  //     ...
  //   }
  // }
  // return max;

  return 0; // временный заглушка, чтобы код компилировался
}
