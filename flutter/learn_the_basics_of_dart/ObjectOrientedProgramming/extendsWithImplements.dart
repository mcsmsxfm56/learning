/*
All developers working with dart for application development using the Flutter framework  regularly encounters different usage of the implements, extends and with  keywords. In Dart, one class can inherit another class i.e dart can create a new class from an existing class. We make use of keywords to do so. In this article, we will look into 3 of the keywords used for the same purpose and compare them, namely:

extends
with
implements
Let’s look into them one at a time.



 
extends
In Dart, the extends keyword is typically used to alter the behavior of a class using Inheritance.  The capability of a class to derive properties and characteristics from another class is called Inheritance. It is ability of a program to create new class from an existing class. In simpler words, we can say that we use extends to create a subclass, and super to refer to the superclass. The class whose properties are inherited by child class is called Parent Class. Parent class is also known as base class or super class.The class that inherits properties from another class is called child class. Child class is also known as derived class, heir class, or subclass.The extends keyword is the typical OOP class inheritance. If class Second extends class First all properties, variables, methods implemented in class First are also available in Second class. Additionally, you can override methods.


You use extend if you want to create a more specific version of a class. For instance if Apple extends from Fruit class, it means all the properties, variables and functions defined in the Fruit class will be available in the Apple class.

Example:

Below we can see and example of implementation of the extends keyword. We are not required to override the definition of the inherited class and can use the existing definition in the child class.

// Class with name First
class First {
  static int num = 1;
  void firstFunc(){
    print('hello');
  }
}
 
// inherits from First class
class Second extends First{
//   No need to override
}
 
void main(){
   
  // instance of First Class
  var one = First();
   
  // calling firstFunc()
  one.firstFunc();
   
  // printing static variable of class
  print(First.num);
   
  // instance of Second Class
  var second = Second();
   
  // calling firstFunc() that
  // has been inherited
  second.firstFunc();
}
 
 

Output:

 

hello
1
hello
implements 
 

Interfaces define a set of methods available on an object. Dart does not have a syntax for declaring interfaces.Class declarations are themselves interfaces in Dart. An interface is something that enforces the deriving class to implement a set list of public fields and methods.

 

The implement keyword is used to implement an interface by forcing the redefinition of the functions.

 

Every class implicitly defines an interface containing all the instance members of the class and of any interfaces it implements. If you want to create a class A that supports class B’s API without inheriting B’s implementation, class A should implement the B interface. A class implements one or more interfaces by declaring them in an implements clause and then providing the APIs required by the interfaces. 

 

Example:

 

// Class with name First
class First {
   
  // function to print "hello"
  void firstFunc(){
    print('hello');
  }
}
 
// We inherit the propertied
// of implemented class
class Second implements First{
   
  // by overriding the functions
  // in implemented class
  @override
  void firstFunc(){
    print('We had to declare the methods of implemented class');
  }
}
 
void main(){
   
  // instance of First Class
  var one = First();
   
  // calling firstFunc()
  one.firstFunc();
  // instance of Second Class
  var second = Second();
   
  // calling firstFunc() that
  // has been inherited
  second.firstFunc(); 
}
 
 

Output:

 

hello
We had to declare the methods of implemented class
with
 

Mixins are a way of reusing a class’s methods in multiple class hierarchies. Mixins can be understood as abstract classes used for reusing the methods in various classes that have similar functions/attribute. Mixins are a way to abstract and reuse a family of operations and state. It is similar to the reuse you get from extending a class, but is not multiple inheritances. There still only exists one superclass.

 

With is used to include Mixins. A mixin is a different type of structure, which can only be used with the keyword with.

 

Mixin is a different type of structure, which can only be used with the keyword with. In Dart, a class can play the role of mixin if the class is does not have a constructor. It is also important to note that a mixin doesn’t force a type restriction nor it imposes usage restrictions on the class methods.

 

Example:

 

// mixin with name First
mixin First {
  void firstFunc(){
    print('hello');
  }
}
 
// mixin with name temp
mixin temp {
  void number(){
    print(10);
  }
}
 
// mixin type used with keyword
class Second with First, temp{
  @override
  void firstFunc(){
    print('can override if needed');
  }
}
 
void main(){
  var second = Second();
  second.firstFunc();
  second.number();
}
 
 

Output:

 

can override if needed
10
 */