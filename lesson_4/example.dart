void main() {
  List<int> numbersInMain = [1,3,5,2, 4, 6, 7,10];
  List<int> numbersInMain2 = [1,3,5,2, 4, 6, 7];
  List<int> numbersInMain3 = [1,3,5, 6, 7,10];
  List<int> numbersInMain4 = [1,3,7,10];
  
  var count = countOfEvenNumbers(numbersInMain);
  print(count);
  count = countOfEvenNumbers(numbersInMain2);
  print(count);
  count = countOfEvenNumbers(numbersInMain3);
  print(count);
  count = countOfEvenNumbers(numbersInMain4);
  print(count);
}

int countOfEvenNumbers(List<int> numbers) {
  int count = 0;
  for (var i = 0; i < numbers.length; i++) {
    if (numbers[i] % 2 == 0) {
      count++;
    }
  }

  return count;
}