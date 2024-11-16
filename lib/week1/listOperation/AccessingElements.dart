void main(){

  // String letters = "sharon";
  // printStingFirstAndLastElement(data: letters);

  List<String>words=['apple', 'banana', 'cherry', 'date', 'elderberry'];
  printStingFirstAndLastElementInList(data: words);

}

printStingFirstAndLastElementInList({required List<String>data}){
  if(data.length != 0){
    print(data[0]);
    print(data[data.length-1]);
  }else{
    print("list is emty");
  }
}

printStingFirstAndLastElement({required String data}){
  if(data.length != 0){
    print(data[0]);
    print(data[data.length -1]);
  }else{
    print("srting is emty");
  }
}