void main() {
  List<String> things_to_buy = ["tea", "coffee", "bread", "icecream", "tea", "coffee", "bread", "icecream", "coffee", "coffee", "coffee"];
  for (var i = 0; i < things_to_buy.length; i = i + 1) {
    if (things_to_buy[i] == "coffee") {
      things_to_buy[i] = "decoffee";
    }
  }

  print(things_to_buy);
}