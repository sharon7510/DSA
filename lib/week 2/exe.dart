
void main(){
  List<int> list = [1,2,9,6,7,5,4,3,9,8];
  bubbleSort(list: list);
  insertionsort(list:list);
}

void insertionsort({required List<int> list}) {

  for(int i = 0 ; i<list.length;i++){
    int temp = list[i];
    int j = i-1;
    while(j>=0 && list[j]>temp){
      list[j+1];
    }
  }

}

void bubbleSort({required List<int> list}) {

  for(int i = 0 ; i<list.length-1;i++){
    for(int j = 0; j<list.length-i-1;j++){
      if(list[j]>list[j+1]){
        int temp = list[j];
        list[j] = list[j+1];
        list[j+1] = temp;
      }
    }
  }
  print(list);

}




// void main(){
//
//   List<int>list=[6,5,7,9,4,0,2];
//   // sum(list: list,data: 10);
//   // findPairs(data: 10,list: list);
//   printsecunse(number: 10);
// }
//
// printsecunse({required int number}){
//
//   while(number != 0){
//     print(number);
//     number --;
//   }
//
// }
//
//
// List<List<int>> findPairs({required int data, required List<int> list}) {
//   List<List<int>> result = [];
//
//   if (list.isEmpty) {
//     print("Empty list");
//     return result;
//   }
//
//   Map<int, bool> seen = {};
//
//   for (var num in list) {
//     int complement = data - num;
//     if (seen[complement] == true) {
//       result.add([complement, num]);
//     }
//
//     seen[num] = true;
//   }
//
//   if (result.isEmpty) {
//     print("No pairs found");
//   } else {
//     print(result);
//     print(seen);
//   }
//
//   return result;
// }
//
//
// sum({required int data, required List<int>list}){
//
//   List<int>newList=[];
//
//   if(list.isEmpty){
//     print("empty list");
//     return;
//   }
//
//   for(int i =0;i<list.length-1;i++){
//     for(int j =i+1;j<list.length;j++){
//       if(list[i]+list[j]==data){
//         newList.add(list[i]);
//         newList.add(list[j]);
//       }
//     }
//   }
//
//   print(newList.isEmpty? "empty List" : newList);
//
// }