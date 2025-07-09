void main() {
  List<String> stuff_to_buy = ["tea", "coffee", "bread"];
  stuff_to_buy[0] = "meat";
  stuff_to_buy.add("butter");
  stuff_to_buy.insert(1, "food for cat");
  stuff_to_buy.remove("coffee");
  print(stuff_to_buy.contains("coffee"));
  print(stuff_to_buy.contains("butter"));
  stuff_to_buy.removeAt(0);
  print(stuff_to_buy);
}