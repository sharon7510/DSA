void main(){
  List<int>list=[1,2,3,4,5,6,7,8,];
  listOfStrings(list: list);
}

listOfStrings({required List<int>list}){

  if(list.isEmpty){
    print("empty List");
    return;
  }
  List<String>newList=["cat"];

  for(int i in list){
    newList.add(i.toString());
  }

  print(newList);



}