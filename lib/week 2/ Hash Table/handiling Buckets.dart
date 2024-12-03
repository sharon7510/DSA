class HashTable<K, V> {
  final List<List<MapEntry<K, V>>> _buckets;
  final int _bucketCount;

  HashTable(this._bucketCount) : _buckets = List.generate(_bucketCount, (_) => []);

  int _hash(K key) => key.hashCode % _bucketCount;

  void put(K key, V value) {
    int index = _hash(key);
    for (var entry in _buckets[index]) {
      if (entry.key == key) {
        entry = MapEntry(key, value); // Update value
        return;
      }
    }
    _buckets[index].add(MapEntry(key, value));
  }

  V? get(K key) {
    int index = _hash(key);
    for (var entry in _buckets[index]) {
      if (entry.key == key) return entry.value;
    }
    return null;
  }

  @override
  String toString() {
    return _buckets.toString();
  }
}

void main() {
  var hashTable = HashTable<String, String>(5);
  hashTable.put('Alice', 'Engineer');
  hashTable.put('Bob', 'Doctor');
  hashTable.put('Charlie', 'Teacher');

  print(hashTable); // Displays internal buckets
  print(hashTable.get('Alice')); // Output: Engineer
}
