
void main(){
  counting();
  groupElements();
  phoneBook();
}

void counting() {
  List<int> numbers = [1, 2, 2, 3, 3, 3];
  Map<int, int> frequency = {};
  for (int number in numbers) {
    frequency[number] = (frequency[number] ?? 0) + 1;
  }

  print(frequency); // Output: {1: 1, 2: 2, 3: 3}
}

//Group Elements by Key
void groupElements() {
  List<String> words = ['apple', 'banana', 'apricot'];
  Map<String, List<String>> groupedWords = {};

  for (String word in words) {
    String firstLetter = word[0];
    groupedWords.putIfAbsent(firstLetter, () => []).add(word);
  }

  print(groupedWords); // Output: {a: [apple, apricot], b: [banana]}
}
//Phone Book Directory
void phoneBook() {
  // Create a hash table (Map)
  Map<String, String> phoneBook = {
    'Alice': '123-456-7890',
    'Bob': '987-654-3210',
    'Charlie': '555-666-7777',
  };

  // Look up a phone number
  String name = 'Bob';
  if (phoneBook.containsKey(name)) {
    print('$name\'s phone number is ${phoneBook[name]}');
    // Output: Bob's phone number is 987-654-3210
  } else {
    print('$name is not in the phone book.');
  }
}
