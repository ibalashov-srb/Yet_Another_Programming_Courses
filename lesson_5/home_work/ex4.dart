/**
 * Магазин покупок
 * У тебя есть два Map:
 * Map<String, int> prices = {'яблоко': 30, 'хлеб': 40};
 * Map<String, int> cart = {'яблоко': 2, 'хлеб': 1};
 * Напиши функцию getTotalPrice(cart, prices) — считает общую сумму покупки.
 */

void main() {
  Map<String, int> prices = {'яблоко': 30, 'хлеб': 40, 'молоко': 50};
  
  Map<String, int> cart = {'яблоко': 2, 'хлеб': 1};
  print(getTotalPrice(cart, prices) == 100 ? 'Test 1 Passed' : 'Test 1 Failed');

  Map<String, int> cart2 = {'молоко': 3, 'яблоко': 1};
  print(getTotalPrice(cart2, prices) == 180 ? 'Test 2 Passed' : 'Test 2 Failed');
  
  print(getZdachya(cart, prices, 250));
}

int getTotalPrice(Map<String, int> cart, Map<String, int> prices) {
  var totalPrice = 0;
  var pricesWithDiscount = getDiscount(prices, 0.25);

  for (var entry in cart.entries) {
    var price = pricesWithDiscount[entry.key]! * cart[entry.key]!;
    totalPrice = totalPrice + price;
  }

  return totalPrice;
}

int getZdachya(Map<String, int> cart, Map<String, int> prices, int money) {
  var total = getTotalPrice(cart, prices);
  var zdachya = money - total;

  return zdachya;
}

Map<String, int> getDiscount(Map<String, int> prices, double discountPercentage) {
  Map<String, int> pricesWithDiscount = {};

  for (var price in prices.entries) {
    var newPrice = price.value * (1 - discountPercentage);
    pricesWithDiscount[price.key] = newPrice.toInt();
  }

  return pricesWithDiscount;
}