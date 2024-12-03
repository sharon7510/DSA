void main(){
  // List<int>list=[1, 2, 3, 4, 5];
  // squareRoot(list: list);

  List<Map<String, dynamic>> students = [
    {'id': 1, 'name': 'Alice', 'age': 20},
    {'id': 2, 'name': 'Bob', 'age': 22},
    {'id': 3, 'name': 'Charlie', 'age': 19},
  ];
  mapToList(list: students);

}

class Student{

  int? id;
  String? name;
  int? age;

  Student({
    required this.id,
    required this.name,
    required this.age
  });

}

mapToList({required List<Map<String, dynamic>> list}){

  List<Student>newList= list.map((i)=>Student(id: i["id"], name: i['name'], age: i['age'])).toList();

  // for(Map i in list){
  //   newList.add(Student(id: i["id"], name: i['name'], age: i['age']));
  // }

  for(int i =0 ;i<newList.length;i++){
    print(newList[i].name);
    print(newList[i].age);
    print(newList[i].id);
  }


}

squareRoot({required List<int>list}){
  List<int>newList=[];
  for(int i in list){
    newList.add(i*i);
  }
  print(newList);
}