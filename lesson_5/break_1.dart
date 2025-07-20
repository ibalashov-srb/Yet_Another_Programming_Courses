void main() {
  Map<String, String> shopAndGood = {
    'bork': 'grill',
    'aston': 'washing mashine',
    'apple': 'iphone',
    'samsung': 'tv',
    'bmw': '320i',
    'audi': 'a5',
  };

  var toDelete = '';
  for (var element in shopAndGood.entries) {
    var shop = element.key;
    var good = element.value;
    print('shop - $shop, good - $good');

    if (good == 'iphone') {
      toDelete = shop;
      break;
    }
  } 

  shopAndGood.remove(toDelete);
  print(shopAndGood);
}