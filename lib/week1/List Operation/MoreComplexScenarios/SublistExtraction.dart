void main(){

  List<int>list=[1,2,3,4,5,6,7,8,9];
  sublistExtraction(list: list,start: 0,end: 8);
  
}

sublistExtraction({required List<int>list,required int end ,required int start}){
 
  if(list.isEmpty){
    print("empty list");
    return ;
  }

  List<int>newList=[];
  end > list.length? end = list.length : null;
  start<0 ? start = 0 : null;

  for(int i=start+1;i<=end;i++){
    newList.add(i);
  }

  
  print("$start $end");
  print(newList);
  
  
}

