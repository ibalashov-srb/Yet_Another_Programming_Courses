class Counter {
  int value = 0;

  void increment() {
    // TODO: увеличить value
  }

  void decrement() {
    // TODO: уменьшить value
  }

  void reset() {
    // TODO: сбросить value в 0
  }
}

void main() {
  Counter c = Counter();
  c.increment();
  c.increment();
  c.decrement();
  print(c.value == 1 ? 'Test 1 Passed' : 'Test 1 Failed');

  c.reset();
  print(c.value == 0 ? 'Test 2 Passed' : 'Test 2 Failed');
}
