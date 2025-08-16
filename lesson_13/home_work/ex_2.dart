List<String> removeLastK(List<String> items, int k) {
  // Используй стек: сначала положи все элементы, потом k раз pop,
  // затем верни оставшиеся элементы в исходном порядке.
  // TODO: реализовать
  return [];
}

void main() {
  print(removeLastK(['a','b', 'c', 'd', 'e', 'x', 'y', 'z'], 5).toString() == [].toString()
      ? 'Test 3.2 Passed' : 'Test 3.2 Failed');
}
