void main() {
  List<String> splitedString = ["1", "2", "3"];

  for(var str in splitedString) {
    if (str == "2") {
      str = "4";
    }
  }

  print(splitedString);

  for (var i = 0; i < splitedString.length; i++) {
    if (splitedString[i] == "2"){
      splitedString[i] = "4";
    }
  }

  //0.061547380000000000
  //0.061547380000000000
  //0.061547380000000000
  //0.061347380000000000
  //0.061233245313427000

  print(splitedString);
}