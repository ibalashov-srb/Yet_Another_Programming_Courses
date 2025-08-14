import 'stack.dart';

// (2+{3)/5}
void main() {
  var stack = Stack();
  List<String> palindrome = ["(", "{", "[", "}", "]", ")"];

  Map<String, String> opposite = {
    "{": "}",
    "(": ")",
    "[": "]",
  };

  for (var char in palindrome) {
    if (stack.len() == 0) {
      print("head - empty");
      stack.append(char);
      continue;
    }

    print("head - ${stack}");

    // stack.head() - "{"

    if (opposite[stack.head()] == char) {
      stack.popend();
    } else {
      stack.append(char);
    }
  }

  if (stack.len() > 0) {
    print("not valid");
    return;
  }

  print("valid");
}