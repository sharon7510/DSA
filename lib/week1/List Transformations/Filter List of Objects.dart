class Person {
  String name;
  int age;

  Person(this.name, this.age);

  @override
  String toString() => 'Person(name: $name, age: $age)';
}

List<Person> filterAdults(List<Person> people) {
  return people.where((person) => person.age > 18).toList();
}

void main() {
  List<Person> people = [
    Person('Alice', 17),
    Person('Bob', 25),
    Person('Charlie', 18),
    Person('Diana', 21)
  ];

  List<Person> adults = filterAdults(people);
  print(adults); // Output: [Person(name: Bob, age: 25), Person(name: Diana, age: 21)]
}

