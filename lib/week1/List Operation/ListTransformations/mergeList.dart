void main(){
  List<int>list =[1,2,3,4];
  List<int>list2=[5,6,7,8];
  mergeList(list: list,list2: list2);
}

mergeList({required List<int>list,required List<int>list2}){

  List<int>newList=[];

  for(int i in list){
    newList.add(i);
  }
  for(int i in list2){
    newList.add(i);
  }

  print(newList);

}