void main() {
  List<String> listOfAges = ['Ivan: 31', 'Vika: 23'];
  // Обявление Map
  Map<String, int> agesOfPeople = {
    'Ivan': 31,
    'Vika': 23
  };

  print(agesOfPeople);
  print(listOfAges);

  // Мы поменяли значение у существующего ключа 
  agesOfPeople['Ivan'] = 32;
  print(agesOfPeople);

  // Добавили новый не существующий до этого ключ
  agesOfPeople['Elena'] = 30;
  print(agesOfPeople);

  // удалили существующий ключ
  agesOfPeople.remove('Ivan');
  print(agesOfPeople);
}