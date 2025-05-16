import 'linked_list.dart';
import 'node.dart';

class LinkedListChallenges {
  /// Challenge 1: Print in Reverse
  /// Creates a function that prints the nodes of a linked list in reverse order.
  static void printLinkedListInReverse<E>(LinkedList<E> list) {
    _printNodeInReverse(list.head);
  }

  static void _printNodeInReverse<E>(Node<E>? node) {
    if (node == null) return;
    _printNodeInReverse(node.next);
    print(node.value);
  }

  /// Challenge 2: Find the Middle Node
  /// Creates a function that finds the middle node of a linked list.
  static Node<E>? findMiddleNode<E>(LinkedList<E> list) {
    var slow = list.head;
    var fast = list.head;

    while (fast?.next != null) {
      fast = fast?.next?.next;
      slow = slow?.next;
    }

    return slow;
  }

  /// Challenge 3: Reverse a Linked List
  /// Creates a function that reverses a linked list by manipulating the nodes.
  static void reverseLinkedList<E>(LinkedList<E> list) {
    var prev = null;
    var current = list.head;
    list.tail = list.head;

    while (current != null) {
      var next = current.next;
      current.next = prev;
      prev = current;
      current = next;
    }

    list.head = prev;
  }

  /// Challenge 4: Remove All Occurrences
  /// Creates a function that removes all occurrences of a specific element from a linked list.
  static void removeAllOccurrences<E>(LinkedList<E> list, E element) {
    while (list.head != null && list.head?.value == element) {
      list.head = list.head?.next;
    }

    var current = list.head;
    while (current != null) {
      while (current.next != null && current.next?.value == element) {
        current.next = current.next?.next;
      }
      current = current.next;
    }

    // Update tail
    if (list.head != null) {
      var current = list.head;
      while (current?.next != null) {
        current = current?.next;
      }
      list.tail = current;
    } else {
      list.tail = null;
    }
  }
}