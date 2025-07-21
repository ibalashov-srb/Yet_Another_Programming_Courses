void main() {
  Map<String, int> prices = {'яблоко': 30, 'хлеб': 40, 'молоко': 50};
  Map<String, int> cart = {'яблоко': 2, 'хлеб': 1};

  print(getTotalPrice(cart, prices) == 100 ? 'Test 1 Passed' : 'Test 1 Failed');

  Map<String, int> cart2 = {'молоко': 3, 'яблоко': 1};
  print(getTotalPrice(cart2, prices) == 200 ? 'Test 2 Passed' : 'Test 2 Failed');
}

// TODO: реализуй функцию
int getTotalPrice(Map<String, int> cart, Map<String, int> prices) {
  // Здесь должен быть твой код
  return 0;
}
