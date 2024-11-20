import 'dart:convert';

String convertToJson(List<Map<String, dynamic>> keyValuePairs) {
  return jsonEncode(keyValuePairs);
}

void main() {
  List<Map<String, dynamic>> keyValuePairs = [
    {"key": "name", "value": "Alice"},
    {"key": "age", "value": 25},
    {"key": "city", "value": "New York"}
  ];

  String jsonString = convertToJson(keyValuePairs);
  print(jsonString);
  // Output: [{"key":"name","value":"Alice"},{"key":"age","value":25},{"key":"city","value":"New York"}]
}
