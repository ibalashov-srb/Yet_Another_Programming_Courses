class Human {
  String name;
  String surname;
  int age;
  String sex;

  Human(this.name, this.surname, this.age, this.sex);
}

void main() {
  Human ivan = Human("Ivan", "Balashov", 31, "male");
  print(ivan.name);
  print(ivan.surname);
  print(ivan.age);
  print(ivan.sex);
  
  Human vika = Human("Vika", "Larkova", 23, "female");
  print(vika.name);
  print(vika.surname);
  print(vika.age);
  print(vika.sex);
}