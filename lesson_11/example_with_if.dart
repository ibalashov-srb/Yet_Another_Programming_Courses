/*void main() {
  if (func1(3) == "123") {
    print("123");
  };
  func1(0);
}


String func1(int a) {
  if (a > 2) {
    a ~/ 0;
    return "123";
  } else {
    return "";
  }
}
*/

void main() {
  try {
    if (func1(3) == "123") { // <- В этой функции срабатывает исключение
      print("123");          // сюда мы уже не попадем
    };

    print(func1(0));         // и сюда тоже
  } catch (e) {
    print(e);                // попадем ток сюда
  }
  
}

String func1(int a) {
  if (a > 2) {
    a ~/ 0;
    return "123";
  } else {
    return "321";
  }
}