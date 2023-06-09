/*
In dart, the subclass can inherit all the variables and methods of the parent class, with the use of extends keyword but it can’t inherit constructor of the parent class. To do so we make use of super constructor in the dart. There are two ways to call super constructor: 

Implicitly
Explicitly
When calling explicitly we make use of super constructor as:  

Child_class_constructor() :super() {
...
}
Implicit super: In this case, the parent class is called implicitly, when there is object creation of child class. Here we don’t make use of the super constructor but when the child class constructor is invoked then it calls default parent class constructor. 

Example: Calling parent constructor taking no parameter(s).  


// Dart program for calling parent
// constructor taking no parameter
class SuperGeek {
    
  // Creating parent constructor
  SuperGeek(){
    print("You are inside Parent constructor!!");
  }
}
   
class SubGeek extends SuperGeek {
    
  // Creating child constructor
  SubGeek(){
    print("You are inside Child constructor!!");
  }
}
   
void main() {
  SubGeek geek = new SubGeek();
}
 

Output:  

You are inside Parent constructor!!
You are inside Child constructor!!
Explicit super: If the parent constructor is default then we call it as followed in implicit super, but if it takes parameters then the superclass is invoked as shown in the syntax mentioned above. 

Example: Calling parent constructor taking parameter(s). 

class SuperGeek {
    
  // Creating parent constructor
  SuperGeek(String geek_name){
    print("You are inside Parent constructor!!");
    print("Welcome to $geek_name");
  }
}
   
class SubGeek extends SuperGeek {
    
  // Creating child constructor
  // and calling parent class constructor
  SubGeek() : super("Geeks for Geeks"){
    print("You are inside Child constructor!!");
  }
}
   
void main() {
  SubGeek geek = new SubGeek();
}
 

Output: 

You are inside Parent constructor!!
Welcome to Geeks for Geeks
You are inside Child constructor!!
 */