// можешь ипортировать стэк который мы делали на уроке

String reverseWithStack(String input) {
  // Идея: положить каждый символ в стек, затем снимать и собирать обратно
  // TODO: реализовать
  return '';
}

void main() {
  print(reverseWithStack('hello') == 'olleh' ? 'Test 2.1 Passed' : 'Test 2.1 Failed');
  print(reverseWithStack('абв') == 'вба' ? 'Test 2.2 Passed' : 'Test 2.2 Failed');
  print(reverseWithStack('') == '' ? 'Test 2.3 Passed' : 'Test 2.3 Failed');
}
