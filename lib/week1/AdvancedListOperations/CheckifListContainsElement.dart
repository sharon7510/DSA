void main(){
  List<int>list=[1,2,3,4,5,6,7];
  findIndexOfElement(list: list,value: 2);
  // ifListContainsMultipleElements(list: list,values: [2,9,6]);
  // ifListContains(list: list,value: 3);
}

void findIndexOfElement({required List<int> list, required int value}) {
  if (list.isEmpty) {
    print("Empty list");
    return;
  }

  bool insideTheList = false;
  int index = -1;

  for (int i = 0; i < list.length; i++) {
    if (list[i] == value) {
      insideTheList = true;
      index = i; // Assign the correct index
      break; // Exit the loop once the value is found
    }
  }

  if (insideTheList) {
    print("Element $value is inside the list at index $index");
  } else {
    print("Element $value is not inside the list");
  }
}


class Element {
  int? value;
  bool? isValueThere;

  Element({required this.value, required this.isValueThere});

  @override
  String toString() {
    return 'value: $value isValueThere: $isValueThere';
  }
}

void ifListContainsMultipleElements({
  required List<int> list,
  required List<int> values,
}) {
  if (list.isEmpty) {
    print("Empty list");
    return;
  }

  List<Element> getValues = [];

  for (int value in values) {
    bool isPresent = false;

    // Check if value exists in the list
    for (int listItem in list) {
      if (value == listItem) {
        isPresent = true;
        break; // Exit inner loop once a match is found
      }
    }

    // Add result to getValues
    getValues.add(Element(value: value, isValueThere: isPresent));
  }

  print(getValues);
}

ifListContains({required List<int>list,required int value}){
  if(list.isEmpty){
    print("empty list");
    return;
  }

  bool itContain = false;
  int index =0;

  for(int i = 0 ;i< list.length;i++){
    if(list[i]==value){
      itContain = true;
      index = list[i];
    }
  }

  if(itContain){
    print("list contain $value at $index rd index");
  }else{
    print("list is not contain this $value value");
  }

}