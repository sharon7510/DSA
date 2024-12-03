
void main() {
  MyQueue queue = MyQueue();
  queue.push(1);
  queue.push(2);
  print("Front element: ${queue.peek()}"); // Output: 1
  print("Removed element: ${queue.pop()}"); // Output: 1
  print("Is queue empty: ${queue.empty()}"); // Output: false
}

class MyQueue {
  List<int> stack1 = [];
  List<int> stack2 = [];

  void push(int x) {
    stack1.add(x);
  }

  int pop() {
    if (stack2.isEmpty) {
      while (stack1.isNotEmpty) {
        stack2.add(stack1.removeLast());
      }
    }
    return stack2.removeLast();
  }

  int peek() {
    if (stack2.isEmpty) {
      while (stack1.isNotEmpty) {
        stack2.add(stack1.removeLast());
      }
    }
    return stack2.last;
  }

  bool empty() {
    return stack1.isEmpty && stack2.isEmpty;
  }
}

