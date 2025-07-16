
void main() {
  List<int> arr = [4, 1, 6, 7, 112, 3, 2, 0, 5, 9, 6];
  print(arr);

  for (var i = 0; i < arr.length; i++) {
    for (var j = i; j < arr.length; j++) {
      if (arr[i] > arr[j]) {
        var tmp = arr[j];
        arr[j] = arr[i];
        arr[i] = tmp;
      }
    }
  }
}