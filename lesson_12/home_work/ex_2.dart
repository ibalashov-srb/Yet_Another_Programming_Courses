/*Объединить два списка в Map
Описание:
Напиши функцию mergeToMap(List<String> keys, List<int> values), 
которая создаёт Map, где каждый элемент из keys — ключ, а из values — значение (по индексу).
[a, b, c] [1, 2, 3]
{'a':1, 'b':2, 'c': 3}
*/

Map<String, int> mergeToMap(List<String> keys, List<int> values) {
  // TODO: создай Map, сопоставив ключи и значения по индексу
  return {};
}

void main() {
  print(mergeToMap(['a', 'b', 'c'], [1, 2, 3]).toString() ==
          {'a': 1, 'b': 2, 'c': 3}.toString()
      ? 'Test Passed'
      : 'Test Failed');
}