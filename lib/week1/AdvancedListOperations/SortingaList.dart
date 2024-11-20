void main(){
  // List<int>list=[8,4,6,5,7,2,3,1];
  List<int>list=[3,6,1,8,5,2];
  // List<int>list=[1,2];
  // swappingTwoNumbers(list: list);
  bubbleSort(list);
}


swappingTwoNumbers({required List<int>list}){

  int temp = list[0];
  list[0]=list[1];
  list[1]=temp;

  print(list);
}



void bubbleSort(List<int> list) {
  if (list.isEmpty) {
    print("list is empty");
    return;
  }
  int n = list.length;
  for(int i =0;i<n-1;i++){
    for(int j =0;j<n-i-1;j++){
      if(list[j]>list[j+1]){
        int temp = list[j];
        list[j]  = list[j+1];
        list[j+1]= temp;
      }
    }
  }

  print(list);
}

