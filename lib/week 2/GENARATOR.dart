import 'dart:math';

void main() {
  // List of names (replace with actual participants)
  List<String> names = ['Alice', 'Bob', 'Charlie', 'Daisy', 'Eve'];

  // Shuffle names for random pairing
  List<String> shuffledNames = List.from(names);
  shuffledNames.shuffle(Random());

  // Map each person to a name they picked
  Map<String, String> secretSantaPairs = {};

  for (int i = 0; i < names.length; i++) {
    if (names[i] == shuffledNames[i]) {
      // If someone picks their own name, reshuffle
      shuffledNames.shuffle(Random());
      i = -1; // Restart the loop
    }
  }

  // Assign pairs
  for (int i = 0; i < names.length; i++) {
    secretSantaPairs[names[i]] = shuffledNames[i];
  }

  // Print the Secret Santa assignments
  print("🎄 Secret Santa Assignments 🎄");
  secretSantaPairs.forEach((giver, receiver) {
    print("$giver ➡️ $receiver");
  });
}
