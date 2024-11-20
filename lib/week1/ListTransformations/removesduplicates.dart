void main(){
  List<int>list=[1,1,2,2,3,3,4,4,5,5,6,6];
  removesDuplicatesUsingSet(list: list);
}



removesDuplicatesUsingSet({required List<int>list}){
  Set<int>newList={};
  for(int i =0;i<list.length;i++){
    newList.add(list[i]);
  }
  print(newList.toList());
}