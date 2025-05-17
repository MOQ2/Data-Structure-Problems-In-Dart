class Stack<T> {
  final _list = <T>[];

  void push(T element) => _list.add(element);

  T pop() => _list.removeLast();

  T get peek => _list.last;

  bool get isEmpty => _list.isEmpty;

  bool get isNotEmpty => _list.isNotEmpty;

  @override
  String toString() => _list.reversed.join(', ');
}
