/*
Dart supports the assignment of constant value to a variable. These are done by the use of the following keyword:

const keyword
final keyword
These keywords are used to keep the value of a variable static throughout the code base, meaning once the variable is defined its state cannot be altered. There are no limitations if these keywords have a defined data type or not.

Final Keyword In Dart
The final keyword is used to hardcode the values of the variable and it cannot be altered in future, neither any kind of operations performed on these variables can alter its value (state).

// Without datatype
final variable_name;

// With datatype
final data_type  variable_name;
Example: Using the final keywords in a Dart program.


void main() {
   
  // Assigning value to geek1
  // variable without datatype
  final geek1 = "Geeks For Geeks";
   
  // Printing variable geek1
  print(geek1);
    
  // Assigning value to geek2
  // variable with datatype
  final String geek2 = "Geeks For Geeks Again!!";
   
  // Printing variable geek2
  print(geek2);
}
  Output:

Geeks For Geeks
Geeks For Geeks Again!!
If we try to reassign the same variable then it will display error.

 

Const Keyword in Dart
The Const keyword in Dart behaves exactly like the final keyword. The only difference between final and const is that the const makes the variable constant from compile-time only. Using const on an object, makes the object’s entire deep state strictly fixed at compile-time and that the object with this state will be considered frozen and completely immutable.

Example: Using const keywords in a Dart program.

void main() {
   
  // Assigning value to geek1
  // variable without datatype
  const geek1 = "Geeks For Geeks";
   
  // Printing variable geek1
  print(geek1);
    
  // Assigning value to
  // geek2 variable with datatype
  const String geek2 = "Geeks For Geeks Again!!";
   
  // Printing variable geek2
  print(geek2);
}
 
Output:

Geeks For Geeks
Geeks For Geeks Again!!
 

Example: Assigning value without const keyword and then by const keyword.

Without Const Keyword

// Declaring a function
gfg() => [1, 2];
 
// Main function
void main() {
  // Assigning value
  // through function
  var geek1 = gfg();
  var geek2 = gfg();
   
  // Printing result
  // false
  print(geek1 == geek2);
  print(geek1);
  print(geek2);
}
Output :

false
[1, 2]
[1, 2]
 

With Const Keyword:

// Declaring a function
gfg() => const[1, 2];
 
// Main function
void main() {
  // Assigning value
  // through function
  var geek1 = gfg();
  var geek2 = gfg();
   
  // Printing result
  // true
  print(geek1 == geek2);
  print(geek1);
  print(geek2);
}
 Output :

true
[1, 2]
[1, 2]
Const Keyword Properties:
It is necessary to create them from the data available during the compile time. For instance: setting string “GeeksForGeeks” is fine but setting the current time is not.
They are deeply and transitively immutable.
They are canonicalised.
 */