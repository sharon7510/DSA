List<T> rotateRight<T>(List<T> list, int n) {
  if (list.isEmpty || n <= 0) return list;

  int len = list.length;
  n %= len; // Handle cases where n > list.length
  return list.sublist(len - n)..addAll(list.sublist(0, len - n));
}

void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  int n = 2;

  List<int> rotated = rotateRight(numbers, n);
  print(rotated); // Output: [4, 5, 1, 2, 3]
}
