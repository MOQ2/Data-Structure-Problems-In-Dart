# Data Structure Problems in Dart

This repository contains implementations of common data structures and their related challenges in Dart programming language.

## Data Structures Implemented

### 1. LinkedList
A generic implementation of a Singly Linked List with the following operations:
- `push`: Add element at the beginning
- `append`: Add element at the end
- `nodeAt`: Get node at specific index
- `insertAfter`: Insert element after a specific node
- `pop`: Remove first element
- `removeLast`: Remove last element
- `removeAfter`: Remove element after a specific node

#### LinkedList Challenges
1. **Find Middle Node**: Implemented using the "slow and fast pointer" technique
2. **Reverse LinkedList**: Creates a new reversed version of the linked list
3. **Remove All Occurrences**: Removes all occurrences of a specific value from the list
4. **Print List in Reverse**: Recursively prints the list in reverse order

### 2. Stack
A generic implementation of a Stack with the following operations:
- `push`: Add element to the top
- `pop`: Remove and return the top element
- `peek`: View the top element without removing it
- `isEmpty`: Check if stack is empty
- `isNotEmpty`: Check if stack has elements

#### Stack Challenges
1. **Reverse List**: Implementation of list reversal using a stack
2. **Balanced Parentheses**: Check if a string has balanced parentheses using stack

## How to Run

1. Make sure you have Dart SDK installed on your system
2. Clone this repository
3. Navigate to the project directory
4. Run the challenge files using:
   ```bash
   dart run LinkedListChallenges.dart
   dart run StackChallenge.dart
   ```

## Implementation Details

### LinkedList Operations
- Uses generic type `<E>` for flexibility
- Maintains both `head` and `tail` pointers
- Implements `Iterable` for easy traversal

### Stack Operations
- Implemented using a List as underlying storage
- Provides O(1) complexity for push and pop operations
- Generic implementation allowing any data type

## Sample Usage

```dart
// LinkedList Example
LinkedList<int> list = LinkedList<int>();
list.push(1);
list.push(2);
print(findMiddleNode(list)?.value);
print(reverseLinkedList(list));

// Stack Example
Stack<int> stack = Stack<int>();
stack.push(1);
stack.push(2);
print(stack.pop());  // prints: 2
```

## Contributing

Feel free to contribute by:
1. Forking the repository
2. Creating a new branch for your feature
3. Submitting a pull request


