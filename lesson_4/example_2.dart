import 'dart:io';

void main() {
  String result = "";
  print("Введите слово для разворота");
  var word = stdin.readLineSync();
  result = reverse(word!);
  print(result);
}

String reverse(String target) {
  List<String> result = [];
  List<String> letters = target.split('');

  for(int i = letters.length - 1; i >= 0; i--) {
    result.add(letters[i]);
  }

  return result.join();
}
