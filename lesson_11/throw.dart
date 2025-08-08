void main() {
  print(division(124.5, 2));
  try {
    print(division(23, 0));
  } catch (e) {
    print(e);
  }
  
}

double division(double a, double b) {
  if (b == 0) {
    throw Exception("division can't perform with b = 0");
  }

  return a / b;
}