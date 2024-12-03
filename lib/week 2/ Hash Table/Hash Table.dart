//Create a Hash Table
void Create() {
  Map<String, int> hashTable = {};
  print(hashTable); // Output: {}
}
//Add Key-Value Pairs
void add() {
  Map<String, int> hashTable = {};
  hashTable['apple'] = 5;
  hashTable['banana'] = 10;
  print(hashTable); // Output: {apple: 5, banana: 10}
}
//Access Values by Key
void Access() {
  Map<String, int> hashTable = {'apple': 5, 'banana': 10};
  print(hashTable['apple']); // Output: 5
}
//Update Values
void Update() {
  Map<String, int> hashTable = {'apple': 5, 'banana': 10};
  hashTable['apple'] = 15; // Update value
  print(hashTable); // Output: {apple: 15, banana: 10}
}
//Remove Key-Value Pairs
void Remove() {
  Map<String, int> hashTable = {'apple': 5, 'banana': 10};
  hashTable.remove('apple');
  print(hashTable); // Output: {banana: 10}
}
//Check if Key Exists
void Check() {
  Map<String, int> hashTable = {'apple': 5, 'banana': 10};
  print(hashTable.containsKey('apple')); // Output: true
}
//Iterate Over the Hash Table
void Iterate() {
  Map<String, int> hashTable = {'apple': 5, 'banana': 10};
  hashTable.forEach((key, value) {
    print('$key: $value');
  });
  // Output:
  // apple: 5
  // banana: 10
}

//Advanced Features

//Using Default Values for Missing Keys
void Default() {
  Map<String, int> hashTable = {'apple': 5};
  print(hashTable['banana'] ?? 0); // Output: 0
}
//Custom Initialization
void Custom() {
  Map<String, int> hashTable = Map.fromEntries([
    MapEntry('apple', 5),
    MapEntry('banana', 10),
  ]);
  print(hashTable); // Output: {apple: 5, banana: 10}
}

