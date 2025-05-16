import 'linked_list/linked_list_challenges.dart';
import 'stack/stack_challenges.dart';
import 'linked_list/linked_list.dart';


void main() {
  print('\n=== Stack Challenge 1: Reverse a List ===');
  final list = [1, 2, 3, 4, 5];
  print('Original list: $list');
  print('Reversed list:');
  StackChallenges.printListInReverse(list);

  print('\n=== Stack Challenge 2: Balance the Parentheses ===');
  final expressions = ['()', '((()))', '(())', '(()', ')('];
  for (final expression in expressions) {
    print('$expression is balanced: ${StackChallenges.checkBalancedParentheses(expression)}');
  }

  print('\n=== Linked List Challenge 1: Print in Reverse ===');
  final linkedList = LinkedList<int>();
  linkedList.append(1);
  linkedList.append(2);
  linkedList.append(3);
  print('Original linked list: $linkedList');
  print('Reversed linked list:');
  LinkedListChallenges.printLinkedListInReverse(linkedList);

  print('\n=== Linked List Challenge 2: Find the Middle Node ===');
  print('Original linked list: $linkedList');
  final middleNode = LinkedListChallenges.findMiddleNode(linkedList);
  print('Middle node value: ${middleNode?.value}');

  print('\n=== Linked List Challenge 3: Reverse a Linked List ===');
  print('Before reversal: $linkedList');
  LinkedListChallenges.reverseLinkedList(linkedList);
  print('After reversal: $linkedList');

  print('\n=== Linked List Challenge 4: Remove All Occurrences ===');
  final listWithDuplicates = LinkedList<int>();
  listWithDuplicates.append(1);
  listWithDuplicates.append(2);
  listWithDuplicates.append(2);
  listWithDuplicates.append(3);
  listWithDuplicates.append(2);
  listWithDuplicates.append(4);
  print('Original list: $listWithDuplicates');
  LinkedListChallenges.removeAllOccurrences(listWithDuplicates, 2);
  print('After removing all 2s: $listWithDuplicates');
}