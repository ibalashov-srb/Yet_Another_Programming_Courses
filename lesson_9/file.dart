import 'dart:io';

void main() {
  String content = File('/Users/ivanbalashov/Yet_Another_Programming_Course/lesson_9/test.txt').readAsStringSync();

  print(content);
}