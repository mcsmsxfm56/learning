// Dart Program to create a constructor
  
// Creating Class named Gfg
class Gfg{
    
  // Creating Constructor
  Gfg() {
      
    // Whenever constructor is called
    // this statement will run
    print('Constructor is being created');
  }
    
  // Creating Field inside the class
  String geek1;
    
  // Creating Function inside class
  void geek(){
    print("Welcome to $geek1");
  }
}
  
void main() {
    
  // Creating Instance of class
  Gfg geek = new Gfg();
    
  // Calling field name geek1
  // and assigning value to it
  // using object of the class Gfg
  geek.geek1 = 'GeeksforGeeks';
    
  // Calling function name
  // geek using object
  // of the class Gfg
  geek.geek();
}

/*
There are three types of constructors in Dart: 
1. Default Constructor: The default constructors are those constructors that don’t have any parameters in it. Thus, if a constructor which don’t have any parameter then it will be a type of default constructor.

Example: Creating default constructor in Dart 
 

// Dart program to illustrate
// the Default constructor
  
// Creating Class named Gfg
class Gfg{
    
  // Creating Constructor
  Gfg() {
    print('This is the default constructor');
  }
}
  
void main() {
    
  // Creating Instance of class 
  Gfg geek = new Gfg();  
}
 

Output: 

This is the default constructor
2. Parameterized Constructor: In Dart, you can also create a constructor having some parameters. These parameters will decide which constructor will be called and which will be not. Those constructors which accept parameters is known as parameterized constructor. 
 

Example:  
 

// Creating parameterized constructor in Dart
  
// Creating Class named Gfg
class Gfg{
    
  // Creating Parameterized Constructor
  Gfg(int a) {
      
    print('This is the parameterized constructor');
  }
}
  
void main() {
    
  // Creating Instance of class 
  Gfg geek = new Gfg(1);  
}
 

Output: 

This is the parameterized constructor
Note: You can’t have two constructors with the same name although they have different parameters. The compiler will display an error.
 

3. Named Constructor: As you can’t define multiple constructors with the same name, this type of constructor is the solution to the problem. They allow the user to make multiple constructors with a different name.

class_name.constructor_name ( parameters ){
   // Body of Constructor
}
Example: 
 

// Creating named constructor in Dart 
  
// Creating Class named Gfg
class Gfg{
    
  // Creating named and
  // parameterized Constructor
  // with one parameter
  Gfg.constructor1(int a) {
    print('This is the parameterized constructor with only one parameter');
  }
  // Creating named and
  // parameterized Constructor
  // with two parameter
  Gfg.constructor2(int a, int b) {
    print('This is the parameterized constructor with two parameters');
    print('Value of a + b is ${a + b}');
  }
}
  
void main() {
  // Creating Instance of class
  Gfg geek1 = new Gfg.constructor1(1); 
  Gfg geek2 = new Gfg.constructor2(2, 3); 
}
 

Output: 

This is the parameterized constructor with only one parameter
This is the parameterized constructor with two parameters
Value of a + b is 5
 */