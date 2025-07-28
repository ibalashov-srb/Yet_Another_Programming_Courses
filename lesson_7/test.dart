class TestClass {
  int a;
  int b;

  TestClass(this.a, this.b);
}

void main() {
  List<TestClass> listOfTestClass = []; 
  
  listOfTestClass.add(TestClass(5, 2));
  listOfTestClass.add(TestClass(3, 4));
  listOfTestClass.add(TestClass(1, 6));

  print(listOfTestClass.contains(TestClass(5, 2)));
  listOfTestClass.sort((a, b) {
    if (a.a > b.a) {
      return a.a;
    }
    return b.b;
  });

  print(listOfTestClass);
}