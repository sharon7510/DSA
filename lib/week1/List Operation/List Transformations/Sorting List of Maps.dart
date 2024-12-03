void main() {
  List<Map<String, dynamic>> people = [
    {'name': 'Alice', 'age': 25},
    {'name': 'Bob', 'age': 20},
    {'name': 'Charlie', 'age': 30}
  ];

  // Sorting by age in ascending order
  people.sort((a, b) => a['age'].compareTo(b['age']));

  print(people);
  // Output: [{name: Bob, age: 20}, {name: Alice, age: 25}, {name: Charlie, age: 30}]

  // Sorting by age in descending order
  people.sort((a, b) => b['age'].compareTo(a['age']));

  print(people);
  // Output: [{name: Charlie, age: 30}, {name: Alice, age: 25}, {name: Bob, age: 20}]
}
