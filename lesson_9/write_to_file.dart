import 'dart:io';

void main() {
  File('lesson_9/practice.txt').writeAsStringSync("test line\n");
  File('lesson_9/practice.txt').writeAsStringSync("\ttest2", mode: FileMode.append);
}