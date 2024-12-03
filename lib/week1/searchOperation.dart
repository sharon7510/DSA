void main() {
  // Sorted list of integers
  List<int> sortedList = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19];
  int target = 7;

  // Perform binary search
  int result = binarySearch(sortedList, target);

  // Output result
  if (result != -1) {
    print('Element $target found at index $result.');
  } else {
    print('Element $target not found in the list.');
  }
}

// Binary search function
int binarySearch(List<int> list, int target) {
  int left = 0;
  int right = list.length - 1;

  while (left <= right) {
    int middle = left + (right - left) ~/ 2; // Calculate the middle index

    if (list[middle] == target) {
      return middle; // Target found
    } else if (list[middle] < target) {
      left = middle + 1; // Search the right half
    } else {
      right = middle - 1; // Search the left half
    }
  }

  return -1; // Target not found
}
