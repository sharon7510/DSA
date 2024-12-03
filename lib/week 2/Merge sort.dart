void main() {
  List<int> array = [12, 11, 13, 5, 6, 7];
  print("Original Array: $array");
  mergeSort(array);
  print("Sorted Array: $array");
}

void mergeSort(List<int> arr) {
  if (arr.length <= 1) {
    return; // Base case: a single-element array is already sorted
  }

  // Split the array into two halves
  int mid = arr.length ~/ 2;
  List<int> left = arr.sublist(0, mid);
  List<int> right = arr.sublist(mid);

  // Recursively sort both halves
  mergeSort(left);
  mergeSort(right);

  // Merge the sorted halves
  merge(arr, left, right);
}

void merge(List<int> arr, List<int> left, List<int> right) {
  int i = 0, j = 0, k = 0;

  // Merge elements from left and right into arr
  while (i < left.length && j < right.length) {

    if (left[i] <= right[j]) {
      arr[k++] = left[i++];
    } else {
      arr[k++] = right[j++];
    }
  }

  // Copy any remaining elements from the left array
  while (i < left.length) {
    arr[k++] = left[i++];
  }

  // Copy any remaining elements from the right array
  while (j < right.length) {
    arr[k++] = right[j++];
  }
}


