void main(){
  List<int> list = [1,2,9,6,7,5,4,3,10,8];
  print(selectionSort(list: list));
}


List<int> selectionSort({required List<int> list}) {

  if(list.isEmpty){
    print("empty list");
    return [];
  }

  int n = list.length;

  for(int i =0;i<n -1;i++){
    int min = i;
    for(int j =i+1;j<n;j++){
      if(list[j]< list[min]){
        min = j;
      }
    }

    if(min != i){
      int temp = list[i];
      list[i] = list[min];
      list[min] = temp;
    }
  }
  return list;
}

