void main() {
  // Create a stack of integers
  Stack<int> stack = Stack<int>();

  // Perform stack operations
  stack.push(10);
  stack.push(20);
  stack.push(30);
  stack.display(); // Display current stack

  print('Top element is: ${stack.peek()}'); // Peek at the top element

  stack.pop(); // Remove the top element
  stack.display(); // Display current stack

  stack.pop();
  stack.pop();
  stack.pop(); // Attempt to pop from an empty stack
}


// Stack implementation in Dart
class Stack<T> {
  // List to hold stack elements
  final List<T> _stack = [];

  // Push an element onto the stack
  void push(T value) {
    _stack.add(value);
    print('$value pushed onto the stack.');
  }

  // Pop an element from the stack
  T? pop() {
    if (isEmpty()) {
      print('Stack is empty. Cannot pop.');
      return null;
    }
    T value = _stack.removeLast();
    print('$value popped from the stack.');
    return value;
  }

  // Peek at the top element of the stack
  T? peek() {
    if (isEmpty()) {
      print('Stack is empty. Nothing to peek.');
      return null;
    }
    return _stack.last;
  }

  // Check if the stack is empty
  bool isEmpty() {
    return _stack.isEmpty;
  }

  // Display the current stack
  void display() {
    if (isEmpty()) {
      print('Stack is empty.');
    } else {
      print('Stack: $_stack');
    }
  }
}


