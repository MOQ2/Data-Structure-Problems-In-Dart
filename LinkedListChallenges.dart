import "dart:io";

import "LinkedList.dart";


void main(){
  print("Test Linked List Challenges");
  // initializing a linked list
  LinkedList<int> list = LinkedList<int>();
  list.push(1);
  list.push(2);
  list.push(4);
  list.push(2);
  list.push(3);
  list.push(4);
  list.push(19);
  list.push(4);
  list.push(5);
  list.push(6);
  list.push(7);
  list.push(4);
  list.push(8);
  list.push(4);
  // removing all occurrences of 4
  print("Original List: $list");

  removeAllOccurrences(list, 4);
  print("List after removing all occurrences of 4: $list");
  print(list);
  print ("Middle Node: ${findMiddleNode(list)?.value}");
  print ("List in Reverse:");
  print ("Reversed List: ${reverseLinkedList(list)}");

}

// challenge1 : reverse a linked list using recursion
void printListInReverse(linkedList){
  if (linkedList == null) {
    return;
  }
  printListInReverse(linkedList.next);
  print(linkedList.value);
}

// challenge2 : find the middle node of a linked list
// 1. Create two pointers, slow and fast
// 2. Move the slow pointer one step at a time and the fast pointer two steps at a time
// 3. When the fast pointer reaches the end of the list, the slow pointer will be at the middle
Node<E>? findMiddleNode<E>(LinkedList<E> list) {
  if (list.isEmpty) {
    print("List is empty");
    return null;
  }

  Node<E>? slow = list.head;
  Node<E>? fast = list.head;

  while (fast != null && fast.next != null) {
    slow = slow?.next;
    fast = fast.next?.next;
  }

  return slow;
}


// challenge3 : reverse a linked list
// 1. Create a new linked list
// 2. Iterate through the original list
// 3. For each node, create a new node with the same value and add it to the new list
// 4. Return the new list
LinkedList<T> reverseLinkedList<T>(LinkedList<T> list) {
  LinkedList<T> reversedList = LinkedList<T>();
  Node<T>? currentNode = list.head;
  reversedList.tail = list.head;
  while (currentNode != null) {
    reversedList.head = Node(value: currentNode.value, next: reversedList.head);
    currentNode = currentNode.next;
  }
  
  return reversedList;
}


// challenge4 : remove all occurrences of a value from a linked list
// 1. Create a pointer to the head of the list
// 2. Create a pointer to the previous node
// 3. Iterate through the list
// 4. If the current node's value is equal to the value to be removed, remove it from the list
// 5. If the current node's value is not equal to the value to be removed, move the previous pointer to the current node
// 6. Move the current pointer to the next node
void removeAllOccurrences<T>(LinkedList<T> list, T value) {
  Node<T>? currentNode = list.head;
  Node<T>? previousNode;

  while (currentNode != null) {
    if (currentNode.value == value) {
      if (previousNode == null) {
        list.head = currentNode.next;
      } else {
        previousNode.next = currentNode.next;
      }
    } else {
      previousNode = currentNode;
    }
    currentNode = currentNode.next;
  }
}