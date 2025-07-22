/**
 * Количество голосов
 * У тебя есть список голосов:
 * List<String> votes = ['Alice', 'Bob', 'Alice', 'Charlie', 'Alice', 'Bob'];
 * Создай Map<String, int>, где ключ — имя кандидата, а значение — сколько раз за него проголосовали.
 */

void main() {
  List<String> votes = ['Alice', 'Bob', 'Alice', 'Charlie', 'Alice', 'Bob'];

  Map<String, int> result = countVotes(votes);

  print(result['Alice'] == 3 ? 'Test Alice Passed' : 'Test Alice Failed');
  print(result['Bob'] == 2 ? 'Test Bob Passed' : 'Test Bob Failed');
  print(result['Charlie'] == 1 ? 'Test Charlie Passed' : 'Test Charlie Failed');
}

// TODO: реализуй функцию
Map<String, int> countVotes(List<String> votes) {
  // Здесь должен быть твой код
  return {};
}
