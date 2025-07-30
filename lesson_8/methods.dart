class Human {
  String name;
  int age;

  Human(this.name, this.age);

  void makeCelebrate() {
    age = age + 1;
    print("Happy birthday $name! - your age now - $age");
  }
}

void main() {
  var ivan = Human("Ivan", 31);
  var kate = Human("Kate", 31);
  
  kate.makeCelebrate();
  ivan.makeCelebrate();
}

// увеличивать возраст на 1 и писать в консоль Happy birthday!
void makeCelebrate(Human human) {
  human.age = human.age + 1;
  var name = human.name;
  print("Happy birthday $name!");
}