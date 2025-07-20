void main() {
  Map<String, List<String>> dictOfLists = {
    'продукты': ['яблоко', 'арбуз', 'дыня'],
    'штуки': ['молоток','отвертка'],
    'таблетки': ['уголь']
  };

  var result = isInMap('отвертка', dictOfLists);
  print(result);

  var result2 = isInMap('семки', dictOfLists);
  print(result2);
}

bool isInMap(String something, Map<String, List<String>> dictOfLists) {
  for (var el in dictOfLists.entries) {
    if (el.value.contains(something)) {
      return true;
    }
  }

  return false;
}