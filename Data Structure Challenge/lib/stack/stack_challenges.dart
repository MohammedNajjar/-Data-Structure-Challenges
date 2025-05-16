import 'stack.dart';

class StackChallenges {
  /// Challenge 1: Reverse a List
  /// Creates a function that prints the contents of a list in reverse order.
  static void printListInReverse<E>(List<E> list) {
    final stack = Stack<E>();

    // Push all elements onto the stack
    for (var element in list) {
      stack.push(element);
    }

    // Pop and print each element
    while (!stack.isEmpty) {
      print(stack.pop());
    }
  }

  /// Challenge 2: Balance the Parentheses
  /// Checks for balanced parentheses. Given a string, check if there are ( and )
  /// characters, and return true if the parentheses in the string are balanced.
  static bool checkBalancedParentheses(String input) {
    final stack = Stack<String>();

    for (var char in input.split('')) {
      if (char == '(') {
        stack.push(char);
      } else if (char == ')') {
        if (stack.isEmpty) {
          return false;
        }
        stack.pop();
      }
    }

    return stack.isEmpty;
  }
}