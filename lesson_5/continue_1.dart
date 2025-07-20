void main() {
  Map<String, String> shopAndGood = {
    'bork': 'grill',
    'aston': 'washing mashine',
    'apple': 'iphone',
    'samsung': 'tv',
    'bmw': '320i',
    'audi': 'a5',
  };

  for (var element in shopAndGood.entries) {
    var shop = element.key;
    var good = element.value;
    if (good == 'iphone') {
      continue;
    }
    
    print('shop - $shop, good - $good');
  }

  print(shopAndGood);
}