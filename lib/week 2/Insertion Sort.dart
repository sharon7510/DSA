
void main() {
  List<int> list = [1,2,9,6,7,5,4,3,9,8];
  print(insertionSortDescending(list: list));
  //0n2
}

List<int> insertionSortDescending({required List<int> list}) {
  if(list.isEmpty){
    print("empty list");
    return[];
  }

  for(int i = 0 ; i< list.length;i++){
    int temp = list[i];
    int j = i-1;
    while(j>=0 && list[j]>temp){
      list[j+1] = list[j];
      j--;
    }
    list[j+1]= temp;
  }
  return list;
}

// List<int>insertionSortDescending({required List<int>list}){
//
//   if(list.isEmpty){
//     print("empty list");
//     return [];
//   }
//
//   for(int i =0 ; i<list.length;i++){
//     int temp = list[i];
//     int j = i-1;
//     while(j>=0 && list[j]>temp){
//       list[j+1] = list[j];
//       j--;
//     }
//     list[j+1] = temp;
//   }
//   return list;
// }



// void insertionSortDescending({required List<int> list}) {
//   int length = list.length;
//   for (int i = 1; i < length; i++) {
//     int key = list[i];
//     int j = i - 1;
//
//     // Move elements of list[0..i-1] that are smaller than key
//     // to one position ahead of their current position
//     while (j >= 0 && list[j] > key) {
//       list[j + 1] = list[j];
//       j--;
//     }
//     list[j + 1] = key;
//   }
//   print(list);
// }





















//0n2
// void samSort({required List<int> list}) {
//   if (list.isEmpty) {
//     print("Empty list");
//     return;
//   }
//
//   bool swapped = false;
//
//   for (int i = 1; i < list.length; i++) {
//     if (list[i - 1] > list[i]) {
//       // Swap elements
//       int temp = list[i - 1];
//       list[i - 1] = list[i];
//       list[i] = temp;
//       swapped = true;
//     }
//   }
//
//   // Only call recursively if a swap occurred
//   if (swapped) {
//     samSort(list: list);
//   } else {
//     print(list); // Print the sorted list when no swaps are needed
//   }
// }

