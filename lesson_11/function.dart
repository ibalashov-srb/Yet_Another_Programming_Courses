void main() {
  print(capital("vanya"));

  var capitalize = capital;

  print(capitalize("katya"));
}

String capital(String a) {
  return a[0].toUpperCase() + a.substring(1);
}