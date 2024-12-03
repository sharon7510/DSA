
void main() {
  List<int> array = [10, 7, 8, 9, 1, 5];
  print("Original Array: $array");
  quickSort(array, 0, array.length - 1);
  print("Sorted Array: $array");
}


void quickSort(List<int> arr, int low, int high) {
  if (low < high) {
    int pivotIndex = partition(arr, low, high);
    quickSort(arr, low, pivotIndex - 1); // Sort left part
    quickSort(arr, pivotIndex + 1, high); // Sort right part
  }
}

int partition(List<int> arr, int low, int high) {
  int pivot = arr[high]; // Choose the last element as pivot
  int i = low - 1; // Index for the smaller element

  for (int j = low; j < high; j++) {
    if (arr[j] < pivot) {
      i++;
      // Swap arr[i] and arr[j]
      int temp = arr[i];
      arr[i] = arr[j];
      arr[j] = temp;
    }
  }

  // Place pivot at the correct position
  int temp = arr[i + 1];
  arr[i + 1] = arr[high];
  arr[high] = temp;

  return i + 1; // Return the pivot index
}

