/*
Dart allows the user to create a callable class which allows the instance of the class to be called as a function. To allow an instance of your Dart class to be called like a function, implement the call() method. 

Syntax:

class class_name {
  ... // class content
  
  return_type call ( parameters ) {
    ... // call function content
  }
  
}
In the above syntax, we can see that to create a callable class we have to define a call method with a return type and parameters within it.

Example 1: Implementing a callable class in Dart.


// Creating Class GeeksForGeeks
class GeeksForGeeks {
   
  // Defining call method which create the class callable
  String call(String a, String b, String c) => 'Welcome to $a$b$c!';
}
 
// Main Function
void main() {
  // Creating instance of class
  var geek_input = GeeksForGeeks();
   
  // Calling the class through its instance
  var geek_output = geek_input('Geeks', 'For', 'Geeks');
   
  // Printing the output
  print(geek_output);
}
 

Output:

Welcome to GeeksForGeeks!
 */