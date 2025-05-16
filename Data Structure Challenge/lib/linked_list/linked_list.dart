import 'node.dart';

class LinkedList<E> {
  Node<E>? head;
  Node<E>? tail;

  bool get isEmpty => head == null;

  void push(E value) {
    head = Node(value, head);
    tail ??= head;
  }

  void append(E value) {
    if (isEmpty) {
      push(value);
      return;
    }
    tail!.next = Node(value);
    tail = tail!.next;
  }

  Node<E>? nodeAt(int index) {
    var currentNode = head;
    var currentIndex = 0;

    while (currentNode != null && currentIndex < index) {
      currentNode = currentNode.next;
      currentIndex += 1;
    }
    return currentNode;
  }

  @override
  String toString() {
    if (isEmpty) return 'Empty list';
    return head.toString();
  }
}