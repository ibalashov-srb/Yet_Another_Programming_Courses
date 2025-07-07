import 'dart:io';
import 'dart:math';

void main() {
  // a*x^2 + b*x + c = 0
  print("Enter A coefficient:");
  String? a = stdin.readLineSync(); 

  print("Enter B coefficient:");
  String? b = stdin.readLineSync(); 

  print("Enter C coefficient:");
  String? c = stdin.readLineSync(); 

  var A = double.tryParse(a ?? '');
  var B = double.tryParse(b ?? '');
  var C = double.tryParse(c ?? '');

  if (A == null || B == null || C == null) {
    print("Invalid input. Please enter valid numbers.");
    return;
  }

  print("$A * x^2 + $B * x + $C = 0");

  var discriminant = B * B - 4 * A * C;
  if (discriminant < 0) { 
    print("No real roots.");
  } else if (discriminant == 0) {
    var root = -B / (2 * A);
    print("One real root: $root");
  } else {
    var root1 = (-B + sqrt(discriminant)) / (2 * A);
    var root2 = (-B - sqrt(discriminant)) / (2 * A);
    print("Two real roots: $root1 and $root2");
  }
  print("Thank you for using the quadratic equation solver!");
}