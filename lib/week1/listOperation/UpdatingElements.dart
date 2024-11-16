void main(){

  List<int> numbers = [1,2,3,4,5,6,7];
  // removingListAtIndex(list: numbers,indexToRemove: 10);
  // removingElementsByValue(list: numbers,valueToRemove: 10);
  replaceElement(value: 10,list: numbers,valueToReplace: 4);
  addElement(list: numbers,position: 10,value: 45);

}



void replaceElement({
  required List<int> list,
  required int valueToReplace,
  required int value,
}) {
  if (list.isEmpty) {
    print("empty list");
    return;
  }

  bool isReplaced = false;

  for (int i = 0; i < list.length; i++) {
    if (list[i] == valueToReplace) {
      list[i] = value; // Replace the old value with the new value
      isReplaced = true;
    }
  }

  if (!isReplaced) {
    print("Value to replace not found in the list");
  } else {
    print("Updated list: $list");
  }
}


addElement({required List<int>list,required int position, required int value }){
  List<int>newList=[];

  if(list.length==0) return print("empty list");
  position > list.length? position = list.length : null;

  for(int i =0 ; i< position ; i++){
    newList.add(list[i]);
  }
  newList.add(value);
  for(int i = position ; i< list.length ; i++){
    newList.add(list[i]);
  }
  print(newList);

}