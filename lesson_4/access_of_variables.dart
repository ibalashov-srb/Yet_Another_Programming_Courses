void main() {
  String test = "blablabla";
  print('$test - main');
  brokeTest(test);
  print('$test - main after brokeTest');
}

void brokeTest(String test) {
  print('$test - in broke test');
  test = test + test;
  print('$test - new in broke test');
}