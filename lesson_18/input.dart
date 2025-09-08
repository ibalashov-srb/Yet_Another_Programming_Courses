import 'dart:io';

void main() { 
  String? line = "";
  print("супер полезная программа которая печатает то что ты ввел но задом наперед");

  /* for (var t in temps) {
    if(temps >= 100) {
      turn off 
    }
  }
  */
  while (line != "exit") {
    line = stdin.readLineSync(); 
    String res = "";
    for (int i = line!.length - 1; i >= 0; i--) {
      res = res + line[i];
    }

    print(res);
  }
}