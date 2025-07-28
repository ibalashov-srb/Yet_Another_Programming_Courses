class Human {
  String name;
  int age;

  Human(this.name, this.age);
}

class Family {
  Human? mother;
  Human? father;

  List<Human> children;

  Family(this.mother, this.father, this.children);
}

void main() {
  Human father1 = Human("petya", 30);
  Human mother1 = Human("irina", 28);

  Family family1 = Family(mother1, father1, []);

  Human father2 = Human("igor", 30);
  Human mother2 = Human("zhanna", 28);
  Human children2 = Human("vasya", 1);

  Family family2 = Family(mother2, father2, [children2]);
}