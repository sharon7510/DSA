
void main(){

  List<int> numbers = [1,2,3,4,5,6,7];
  removingListAtIndex(list: numbers,indexToRemove: 10);
  removingElementsByValue(list: numbers,valueToRemove: 10);
}


removingListAtIndex({required List<int>list,required int indexToRemove}){

  if(list.isEmpty){
    print("List is Empty");
    return;
  }

  indexToRemove > list.length? indexToRemove=list.length : null;
  List<int>newList=[];
  bool isDeleted = true;

  for(int i = 0 ;i< list.length; i++){
    if(i != indexToRemove){
      newList.add(list[i]);
    }else{
      isDeleted = false;
    }
  }
  if(isDeleted){
    print("index not found");
  }else{
    print("value $indexToRemove removed from  list and new list is : $newList");
  }


}

void removingElementsByValue({
  required List<int> list,
  required int valueToRemove,
}) {
  if (list.isEmpty) {
    print("The list is empty.");
    return;
  }

  List<int> newList = [];
  bool isDeleted = false;

  for (int i = 0; i < list.length; i++) {
    if (list[i] != valueToRemove) {
      newList.add(list[i]);
    } else {
      isDeleted = true;
    }
  }

  if (isDeleted) {
    print("Deleted value $valueToRemove: $newList");
  } else {
    print("Value $valueToRemove not found inside the list.");
  }
}