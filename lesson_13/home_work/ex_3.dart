String toBinaryWithStack(int n) {
  // Преобразуй положительное число n в двоичную строку.
  // Идея: делим n на 2, остатки (0/1) кладём в стек, затем снимаем в строку.
  // Особый случай: n == 0 → "0"
  // TODO: реализовать
  return '';
}

void main() {
  print(toBinaryWithStack(0) == '0' ? 'Test 5.1 Passed' : 'Test 5.1 Failed');
  print(toBinaryWithStack(5) == '101' ? 'Test 5.2 Passed' : 'Test 5.2 Failed');
  print(toBinaryWithStack(8) == '1000' ? 'Test 5.3 Passed' : 'Test 5.3 Failed');
}
