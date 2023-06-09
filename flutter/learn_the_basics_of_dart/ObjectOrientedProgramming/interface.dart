/*
The interface in the dart provides the user with the blueprint of the class, that any class should follow if it interfaces that class i.e. if a class inherits another it should redefine each function present inside an interfaced class in its way. They are nothing but a set of methods defined for an object. Dart doesn’t have any direct way to create inherited class, we have to make use of implements keyword to do so.

Syntax: 

class Interface_class_name{
   ...
}

class Class_name implements Interface_class_name {
   ...
}
Example 1:
 


void main(){
    
   // Creating Object
   // of the class Gfg
   Gfg geek1= new Gfg();
    
   // Calling method
   // (After Implementation )
   geek1.printdata(); 
}
  
// Class Geek (Interface)
class Geek { 
   void printdata() { 
      print("Hello Geek !!"); 
   } 
}  
  
// Class Gfg implementing Geek
class Gfg implements Geek { 
   void printdata() {  
      print("Welcome to GeeksForGeeks"); 
   } 
}
 

Output: 

Welcome to GeeksForGeeks
Note: Class should use the implements keyword, instead of extending to be able to use an interface method.

Multiple Inheritance in Dart
In dart, multiple inheritances are achieved by the use of implements. Although practically dart doesn’t support multiple inheritances, it supports multiple interfaces.

Syntax:

class interface_class1 {
    ...
}
class interface_class2 {
    ...
}
.
.
.
.
class interface_classN {
    ...
}

class class_name implements interface_class1, interface_class2, ...., interface_classN {
    ...
}
Example:
 

// Dart Program to show Multiple Inheritance 
void main(){
    
   // Creating Object of
   // the class Gfg
   Gfg geek1= new Gfg();
    
   // Calling method (After Implementation )
   geek1.printdata1(); 
   geek1.printdata2(); 
   geek1.printdata3(); 
}
  
// Class Geek1 (Interface1)
class Geek1 { 
   void printdata1() { 
      print("Hello Geek1 !!"); 
   } 
}  
 // Class Geek2 (Interface2)
class Geek2 { 
   void printdata2() { 
      print("Hello Geek2 !!"); 
   } 
}  
 // Class Geek3 (Interface3)
class Geek3 { 
   void printdata3() { 
      print("Hello Geek3 !!"); 
   } 
}  
  
// Class Gfg implementing Geek1, Geek2, Geek3.
class Gfg implements Geek1, Geek2, Geek3 { 
   void printdata1() {  
      print("Howdy Geek1,\nWelcome to GeeksForGeeks"); 
   } 
    
  void printdata2() {  
      print("Howdy Geek2,\nWelcome to GeeksForGeeks"); 
   } 
    
  void printdata3() {  
      print("Howdy Geek3,\nWelcome to GeeksForGeeks"); 
   }   
} 
 

Output: 

Howdy Geek1,
Welcome to GeeksForGeeks
Howdy Geek2,
Welcome to GeeksForGeeks
Howdy Geek3,
Welcome to GeeksForGeeks

Importance of Interface:  

Used to achieve abstraction in Dart.
It is a way to achieve multiple inheritances in Dart.
Important Points:  

If a class has been implemented then all of its method and instance variable must be overridden during the interface.
In dart, there are no direct means to declare an interface, so a declaration of a class is itself considered as a declaration on the interface.
A class can extend only one class but can implement as many as you want.
 */