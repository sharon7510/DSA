class MyStack {
  List<int> queue1 = [];
  List<int> queue2 = [];

  void push(int x) {
    queue2.add(x);
    while (queue1.isNotEmpty) {
      queue2.add(queue1.removeAt(0));
    }
    List<int> temp = queue1;
    queue1 = queue2;
    queue2 = temp;
  }

  int pop() {
    return queue1.removeAt(0);
  }

  int top() {
    return queue1.first;
  }

  bool empty() {
    return queue1.isEmpty;
  }
}

void main() {
  MyStack stack = MyStack();

  stack.push(1);
  stack.push(2);
  print("Top element: ${stack.top()}"); // Output: 2
  print("Removed element: ${stack.pop()}"); // Output: 2
  print("Is stack empty: ${stack.empty()}"); // Output: false
}
