class Student {
  String name;
  List<int> grades;

  Student(this.name, this.grades);

  String printSummary() {
    // TODO: вернуть строку:
    // "Имя: Ivan\nСредняя оценка: 4.0"
    return '';
  }
}

void main() {
  Student s = Student("Ivan", [4, 5, 3, 4]);
  String expected = "Имя: Ivan\nСредняя оценка: 4.0";
  print(s.printSummary() == expected ? 'Test Passed' : 'Test Failed');
}
