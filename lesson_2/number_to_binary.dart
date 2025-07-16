String toBinary(int number) {
  if (number == 0) return '0';

  String result = '';
  while (number > 0) {
    result = '${number % 2}$result';
    number = number ~/ 2;
  }
  return result;
}

void main() {
  int input = 255;
  print('$input в двоичной системе: ${toBinary(input)}');
}
