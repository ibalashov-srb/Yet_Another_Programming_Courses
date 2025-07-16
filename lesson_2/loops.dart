void classicForLoop() {
  print('--- classic for loop ---');
  for (int i = 0; i < 5; i++) {
    print('for: $i');
  }
}

void forInLoop() {
  print('--- for-in loop ---');
  List<String> fruits = ['apple', 'banana', 'cherry'];
  for (var fruit in fruits) {
    print('for-in: $fruit');
  }
}

void whileLoop() {
  print('--- while loop ---');
  int i = 0;
  while (i < 3) {
    print('while: $i');
    i++;
  }
}

void doWhileLoop() {
  print('--- do-while loop ---');
  int i = 0;
  do {
    print('do-while: $i');
    i++;
  } while (i < 3);
}

void forEachLoop() {
  print('--- forEach loop ---');
  List<int> numbers = [1, 2, 3];
  numbers.forEach((number) {
    print('forEach: $number');
  });
}

void main() {
  classicForLoop();
  forInLoop();
  whileLoop();
  doWhileLoop();
  forEachLoop();
}
