/**
 * Stack - структура данных 
 * LIFO - last in first out
 */

void main() {
  var stack = Stack();

  stack.append("mama");
  stack.append("mila");
  stack.append("ramu");

  for (var s in stack.stack) {
    print(s);
  }

  print(stack.head());
}

class Stack {
  List<String> stack = [];

  Stack();

  void append(String val) {
    stack.add(val);
  }

  String head() {
    return stack[stack.length - 1];
  }

  String popend() {
    int lastIdx = stack.length - 1; 
    var val = stack[lastIdx];
    stack.removeAt(lastIdx);

    return val;
  }

  int len() {
    return stack.length;
  }

  @override
  String toString() {
    return stack.join(",");
  }
}