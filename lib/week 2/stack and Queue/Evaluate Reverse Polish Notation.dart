int evalRPN(List<String> tokens) {
  List<int> stack = [];

  for (String token in tokens) {
    if (['+', '-', '*', '/'].contains(token)) {
      int b = stack.removeLast();
      int a = stack.removeLast();

      switch (token) {
        case '+':
          stack.add(a + b);
          break;
        case '-':
          stack.add(a - b);
          break;
        case '*':
          stack.add(a * b);
          break;
        case '/':
          stack.add((a / b).truncate()); // Use truncate for integer division
          break;
      }
    } else {
      stack.add(int.parse(token));
    }
  }

  return stack.last;
}

void main() {
  List<String> tokens = ["2", "1", "+", "3", "*"];
  print("Result: ${evalRPN(tokens)}"); // Output: 9
}
