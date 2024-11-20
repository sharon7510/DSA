void main(){
  List<int>list=[7,2,4,3,5,1,5,8,90];
  maximumAndMinimum(list);
}

maximumAndMinimum(List<int>list){

  num min = list[0];
  num max = list[0];

  for (num number in list) {
    if (number < min) {
      min = number;
    }
    if (number > max) {
      max = number;
    }
  }

  print(min);
  print(max);
}