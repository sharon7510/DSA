void main() {
  List<int> list = [1,2,9,6,7,5,4,3,9,8];
  List<int>sort = bubbleSort(list: list,removeDuplicates: true,ascending: true);
  print(sort);
}

List<int>bubbleSort(
    {required List<int> list,
     bool? ascending,
     bool? removeDuplicates}) {

  if(list.isEmpty){
    print("empty List");
    return [];
  }

  int length = list.length;

  for (int i = 0; i < length - 1; i++) {
    for (int j = 0; j < length - 1 - i; j++) {
      if (ascending??false ? list[j] > list[j + 1] : list[j] < list[j + 1]) {
        int temp = list[j];
        list[j]  = list[j + 1];
        list[j + 1] = temp;
      }
    }
  }

  return
  removeDuplicates??false ?
  list.toSet().toList() :
  list;
}
