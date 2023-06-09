/*
In Dart, one class can inherit another class i.e dart can create a new class from an existing class. We make use of extend keyword to do so.

Terminology:  

Parent Class: It is the class whose properties are inherited by the child class. It is also known as a base class or superclass.
Child Class: It is the class that inherits the properties of the other classes. It is also known as a deprived class or subclass.
class parent_class{
...
}

class child_class extends parent_class{
...
}
Example 1: Example of Single Inheritance in the dart. 


// Dart program to show the single inheritance
 
// Creating parent class
class Gfg{
   
  // Creating a function
  void output(){
    print("Welcome to gfg!!\nYou are inside output function.");
  }
}
 
// Creating Child class
class GfgChild extends Gfg{
  // We are not defining
  // any thing inside it...
}
void main() {
  // Creating object of GfgChild class
  var geek = new GfgChild();
   
  // Calling function
  // inside Gfg(Parent class)
  geek.output();
}
 

Output: 

Welcome to gfg!!
You are inside output function.
Types of Inheritance: 

Single Inheritance: This inheritance occurs when a class inherits a single-parent class.
Multiple Inheritance: This inheritance occurs when a class inherits more than one parent class. Dart doesn’t support this.
Multi-Level Inheritance: This inheritance occurs when a class inherits another child class.
 Hierarchical Inheritance: More than one classes have the same parent class.
Important Points: 

Child classes inherit all properties and methods except constructors of the parent class.
Like Java, Dart also doesn’t support multiple inheritance.
Example 2:

// Dart program for multilevel interitance
 
// Creating parent class
class Gfg{
   
  // Creating a function
  void output1(){
    print("Welcome to gfg!!\nYou are inside the output function of Gfg class.");
  }
}
 
// Creating Child1 class
class GfgChild1 extends Gfg{
   
  // Creating a function
  void output2(){
    print("Welcome to gfg!!\nYou are inside the output function of GfgChild1 class.");
  }
}
 
// Creating Child2 class
class GfgChild2 extends GfgChild1{
  // We are not defining
  // any thing inside it...
}
 
void main() {
  // Creating object
  // of GfgChild class
  var geek = new GfgChild2();
   
  // Calling function
  // inside Gfg
  //(Parent class of Parent class)
  geek.output1();
   
  // Calling function
  // inside GfgChild
  // (Parent class)
  geek.output2();
}
 

Output:  

Welcome to gfg!!
You are inside the output function of Gfg class.
Welcome to gfg!!
You are inside the output function of GfgChild1 class.
Example 3: Hierarchical inheritance.  

// Dart program for Hierarchical inheritance
 
// Creating parent class
class Gfg{
   
  // Creating a function
  void output1(){
    print("Welcome to gfg!!\nYou are inside output function of Gfg class.");
  }
}
 
// Creating Child1 class
class GfgChild1 extends Gfg{
  // We are not defining
  // any thing inside it...
}
 
// Creating Child2 class
class GfgChild2 extends Gfg{
   
  // We are not defining
  // any thing inside it...
}
 
void main() {
  // Creating object
  // of GfgChild1 class
  var geek1 = new GfgChild1();
   
  // Calling function
  // inside Gfg(Parent class)
  geek1.output1();
   
  // Creating object of
  // GfgChild1 class
  var geek2 = new GfgChild2();
   
  // Calling function
  // inside Gfg(Parent class)
  geek2.output1();
}
 

Output: 

Welcome to gfg!!
You are inside output function of Gfg class.
Welcome to gfg!!
You are inside output function of Gfg class.
 */