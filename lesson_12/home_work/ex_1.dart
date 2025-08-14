/*
Задание A: Объединить списки с суммированием одинаковых ключей
Описание:
Напиши функцию mergeWithSum(List<String> keys, List<int> values),
которая создаёт Map, где значения с одинаковым ключом суммируются.
['a', 'b', 'a', 'c', 'b'], [1, 2, 3, 4, 5]
a = 1
b = 2
a = 3
c = 4
b = 5
{a:4, b: 7, c: 4}
*/

Map<String, int> mergeWithSum(List<String> keys, List<int> values) {
  // TODO: создай Map и суммируй значения для повторяющихся ключей
  return {};
}

void main() {
  print(
    mergeWithSum(['a', 'b', 'a', 'c', 'b'], [1, 2, 3, 4, 5]).toString() ==
            {'a': 4, 'b': 7, 'c': 4}.toString()
        ? 'Test A Passed'
        : 'Test A Failed',
  );
}