void main(){
  List<int>list=[1,2,3,4,5,6,7,8,9];
  reverseAListUsingForLoop(list);
  // print(reverseAListUsingRecursion(list,list.length-1));
}




reverseAListUsingForLoop(List<int>list){
  List<int>rev=[];
  for(int i = list.length -1;i>=0;i--){
    rev.add(list[i]);
  }
  print(rev);
}


List<int>reverseAListUsingRecursion(List<int>list,int index){
  if(index<0 || list.isEmpty)return[];
  return [list[index]] + reverseAListUsingRecursion(list, index - 1);
}