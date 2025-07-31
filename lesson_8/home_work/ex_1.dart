class User {
  String name;

  User(this.name);

  String sayHello() {
    // TODO: вернуть строку "Привет, я — {name}"
    return '';
  }
}

void main() {
  User user = User("Anna");
  print(user.sayHello() == "Привет, я — Anna" ? 'Test Passed' : 'Test Failed');
}
