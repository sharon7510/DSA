
void main() {
  // Create a queue of integers
  Queue<int> queue = Queue<int>();

  // Perform queue operations
  queue.enqueue(10);
  queue.enqueue(20);
  queue.enqueue(30);
  queue.display(); // Display current queue

  print('Front element is: ${queue.peek()}'); // Peek at the front element

  queue.dequeue(); // Remove the front element
  queue.display(); // Display current queue

  queue.dequeue();
  queue.dequeue();
  queue.dequeue(); // Attempt to dequeue from an empty queue
}

// Queue implementation in Dart
class Queue<T> {
  // List to hold queue elements
  final List<T> _queue = [];

  // Enqueue (add) an element to the queue
  void enqueue(T value) {
    _queue.add(value);
    print('$value added to the queue.');
  }

  // Dequeue (remove) an element from the front of the queue
  T? dequeue() {
    if (isEmpty()) {
      print('Queue is empty. Cannot dequeue.');
      return null;
    }
    T value = _queue.removeAt(0);
    print('$value removed from the queue.');
    return value;
  }

  // Peek at the front element of the queue
  T? peek() {
    if (isEmpty()) {
      print('Queue is empty. Nothing to peek.');
      return null;
    }
    return _queue.first;
  }

  // Check if the queue is empty
  bool isEmpty() {
    return _queue.isEmpty;
  }

  // Display the current queue
  void display() {
    if (isEmpty()) {
      print('Queue is empty.');
    } else {
      print('Queue: $_queue');
    }
  }
}

