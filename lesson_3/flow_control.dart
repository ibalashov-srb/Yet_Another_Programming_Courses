void main() {
  List<int> arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  for (var i = 0; i < arr.length; i++) {
    if (arr[i] % 2 == 0) {
      print("foo");
    }

    if (arr[i] % 5 == 0) {
      print("baz");
    }

    if (arr[i] % 2 == 0 && arr[i] % 5 == 0) {
      print("traalala");
    }
  }
}