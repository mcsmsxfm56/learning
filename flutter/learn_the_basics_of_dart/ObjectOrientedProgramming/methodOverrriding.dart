/*
Method overriding occurs in dart when a child class tries to override the parent class’s method. When a child class extends a parent class, it gets full access to the methods of the parent class and thus it overrides the methods of the parent class. It is achieved by re-defining the same method present in the parent class.

This method is helpful when you have to perform different functions for a different child class, so we can simply re-define the content by overriding it.

Important Points: 

A method can be overridden only in the child class, not in the parent class itself.
Both the methods defined in the child and the parent class should be the exact copy, from name to argument list except the content present inside the method i.e. it can and can’t be the same.
A method declared final or static inside the parent class can’t be overridden by the child class.
Constructors of the parent class can’t be inherited, so they can’t be overridden by the child class.
Example 1: Simple case of method overriding. 
 


// Dart Program to illustrate the 
// method overriding concept
class SuperGeek {
    
  // Creating a method
  void show(){
    print("This is class SuperGeek.");
  }
}
   
class SubGeek extends SuperGeek {
    
  // Overriding show method
  void show(){
    print("This is class SubGeek child of SuperGeek.");
  }
}
   
void main() {
  // Creating objects
  //of both the classes
  SuperGeek geek1 = new SuperGeek();
  SubGeek geek2 = new SubGeek();
    
  // Calling same function
  // from both the classes
  // object to show method overriding
  geek1.show();
  geek2.show();
}
 

Output: 

This is class SuperGeek.
This is class SubGeek child of SuperGeek.
 */