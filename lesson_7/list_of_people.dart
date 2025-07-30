class Human {
  String name;
  int age;

  Human(this.name, this.age);
}

void main() {
  List<Human> people = [];

  people.add(Human('ivan', 20));
  people.add(Human('ivan', 20));
  people.add(Human('leha', 30));
  people.add(Human('ed', 18));
  people.add(Human('ekaterina', 25));
  people.add(Human('elena', 19));

  for (int i = 0; i < people.length; i++) {
    print("----------");
    print(i);
    print(people[i].name);
    print(people[i].age);
    print("----------");
  }
}