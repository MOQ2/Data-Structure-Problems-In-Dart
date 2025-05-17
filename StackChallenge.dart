import "Stack.dart";

void main(){
  print("Test Reverse List");
  testReverseList();
  print("Test Is Balanced");
  testIsBalanced();
}

void testReverseList(){
  List<int> list = [1,3,4,1,2,5,6,3,2,1,4,5,6,7,8,9];
  revevseList(list);
  List<String> list2 = ["a", "b", "c", "d", "e"];
  revevseList(list2);
  List<double> list3 = [1.1, 2.2, 3.3, 4.4, 5.5];
  revevseList(list3);
  List<String> list4 = ["apple", "banana", "cherry", "date"];
  revevseList(list4);
}


void testIsBalanced(){
  String str = "((a+b)*(c-d))";
  print(isBalanced(str));
  str = "((a+b)*(c-d)";
  print(isBalanced(str));
  str = "((a+b)*(c-d)))";
  print(isBalanced(str));
  str = "((a+b)*(c-d))";
  print(isBalanced(str));
  str = "";
  print(isBalanced(str));
  str = "((((((";
  print(isBalanced(str));
  str = "))))))"; 
  print(isBalanced(str));
}


// Challenge1 : reverse a list using stack
// 1. Create a stack
// 2. Push all elements of the list into the stack
// 3. Pop all elements from the stack and add them to a new list
// 4. Print the new list
// 5. Test the function with different data types (int, String, double, etc.)
void revevseList <T> (List<T> list){
  Stack<T> stack = Stack<T>();
  for (var element in list) {
    stack.push(element);
  }

  List<T> reversedList = [];
  while (stack.isNotEmpty) {
    reversedList.add(stack.pop());
  }
  print(reversedList);
}


// Challenge2 : balanced Paranthesis
// 1. Create a stack
// 2. Iterate through the string
// 3. If the character is an opening bracket, push it onto the stack
// 4. If the character is a closing bracket, check if the stack is empty
// 5. If the stack is empty, return false
// 6. If the stack is not empty, pop the top element from the stack
// 7. If the popped element does not match the closing bracket, return false
// 8. If the stack is empty at the end, return true
// 9. If the stack is not empty, return false
// assuming only ( and ) are used
bool isBalanced(String str){
  if (str.isEmpty) {
    return true;
  }
  Stack<String> stack = Stack<String>();
  for (int i =0 ; i<str.length; i++){
    String char = str[i];
    if (char == "("){
      stack.push(char);
    } else if (char == ")"){
      if (stack.isEmpty){
        return false;
      }
      stack.pop();

    }
  }
  return stack.isEmpty;
}