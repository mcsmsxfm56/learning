/*
1. Function with no argument and no return type:
Basically in this function, we do not give any argument and expect no return type. It can be better understood by an example. 


void myName(){
  print("GeeksForGeeks");
}
 
void main(){
  print("This is the best website for developers:");
  myName();
}
Output:

This is the best website for the developers : GeeksForGeeks
So myName is the function that is void means it is not returning anything and the empty pair of parentheses suggest that there is no argument that is passed to the function.

2. Function with no arguments but return type:
Basically in this function, we are giving an argument and expect no return type. 

int myPrice(){
  int price = 0;
  return price;
}
 
// Driver
void main(){
  int Price = myPrice();
  print("GeeksforGeeks is the best website for developers which costs : ${Price}/-");
}
Output:

GeeksforGeeks is the best website for developers which costs : 0/-
So myPrice is the function that is int means it is returning int type and the empty pair of parentheses suggests that there is no argument which is passed to the function.

3. Function with arguments but no return type:
Basically in this function, we do not give any argument but expect a return type. 

myPrice(int price){
  print(price);
}
 
// Driver
void main() {
   
  print("GeeksforGeeks is the best website for developers which costs : ");
  myPrice(0);
}
Output:

GeeksforGeeks is the best website for developers which costs : 0
So myPrice is the function that is void means it is not returning anything and the pair of parentheses is not empty this time which suggests that it accept an argument. 

4. Function with arguments and with return type:
Basically in this function, we are giving an argument and expect return type. It can be better understood by an example. 

int mySum(int firstNumber, int secondNumber) {
  return (firstNumber + secondNumber);
}
 
// Driver
void main(){
   
  int additionOfTwoNumber = mySum(100, 500);
  print(additionOfTwoNumber);
}
Output:

600
So mySum is the function that is int means it is returning int type and the pair of parentheses is having two arguments that are used further in this function and then in the main function we are printing the addition of two numbers.
 */