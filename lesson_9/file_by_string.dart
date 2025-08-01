import 'dart:io';

void main() {
  List<String> lines = File('lesson_9/test.txt').readAsLinesSync();
  for (int i = 0; i < lines.length; i++) {
    print('$i - ${lines[i]}');
  }
}