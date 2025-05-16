class Stack<E> {
  final List<E> _storage = [];

  void push(E element) => _storage.add(element);

  E pop() {
    if (_storage.isEmpty) throw Exception('Stack is empty');
    return _storage.removeLast();
  }

  E get peek => _storage.last;

  bool get isEmpty => _storage.isEmpty;

  int get length => _storage.length;

  @override
  String toString() => '--- Top ---\n'
      '${_storage.reversed.join('\n')}'
      '\n-----------';
}