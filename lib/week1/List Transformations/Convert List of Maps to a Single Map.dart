Map<String, dynamic> combineMaps(List<Map<String, dynamic>> maps) {
  Map<String, dynamic> result = {};

  for (var map in maps) {
    map.forEach((key, value) {
      if (value is num) {
        result[key] = (result[key] ?? 0) + value; // Sum numeric values
      } else {
        result[key] = value; // Retain non-numeric values (e.g., overwrite)
      }
    });
  }

  return result;
}

void main() {
  List<Map<String, dynamic>> maps = [
    {'a': 10, 'b': 20},
    {'a': 15, 'b': 25, 'c': 5},
    {'a': 5, 'c': 10}
  ];

  Map<String, dynamic> combinedMap = combineMaps(maps);
  print(combinedMap); // Output: {a: 30, b: 45, c: 15}
}
