void main(){
  // List<List<int>>list=[
  //   [1,2,3,4],
  //   [5,3,7,8],
  //   [9,4,5,6,8],
  // ];

  // flattenANestedList(list: list);

  List<int>list=[1, 2, 3, 4, 5, 3, 7, 8, 9, 4, 5, 6, 8];
  print(chunkList(list, 3));
}

List<List<T>> chunkList<T>(List<T> list, int chunkSize) {
  List<List<T>> chunks = [];
  List<T> currentChunk = [];

  for (T item in list) {
    currentChunk.add(item);
    if (currentChunk.length == chunkSize) {
      chunks.add(List.from(currentChunk));
      currentChunk.clear();
    }
  }

  if (currentChunk.isNotEmpty) {
    chunks.add(currentChunk);
  }

  return chunks;
}

flattenANestedList({required List<List<int>>list}){
  List<int> newList = [];

  for (List<int> innerList in list) {
    for (int item in innerList) {
      newList.add(item);
    }
  }
  print(newList);


}