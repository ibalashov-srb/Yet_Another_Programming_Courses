void main() {
  Map<String, String> shopAndGood = {
    'apple': 'iphone',
    'samsung': 'tv',
    'bmw': '320i'
  };

  var toDelete = '';
  for (var element in shopAndGood.entries) {
    var shop = element.key;
    var good = element.value;
    print('shop - $shop, good - $good');

    if (good == '320i') {
      toDelete = shop;
    }
  } 

  shopAndGood.remove(toDelete);
  print(shopAndGood);
}