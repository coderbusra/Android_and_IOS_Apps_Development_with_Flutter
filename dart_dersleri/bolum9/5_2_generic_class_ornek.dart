import '5_1_my_stack.dart';

void main(List<String> args) {
  MyStack myStack = MyStack();
  myStack.push(5);
  myStack.push("emre");
  myStack.push(true);

  print(myStack.pop());
  print(myStack.pop());
  print(myStack.pop());

  IntMyStack intMyStack = IntMyStack();
  intMyStack.push(10);
  print(intMyStack.pop());
  
  StringMyStack stringMyStack = StringMyStack();
  stringMyStack.push("ali");
  print(stringMyStack.pop());

  GenericStack<String> genericStack = GenericStack();
  genericStack.push("büşra");
  print(genericStack.pop());

  

}

