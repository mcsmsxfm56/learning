/*
The static keyword is used for memory management of global data members. The static keyword can be applied to the fields and methods of a class. The static variables and methods are part of the class instead of a specific instance. 

The static keyword is used for a class-level variable and method that is the same for every instance of a class, this means if a data member is static, it can be accessed without creating an object.
The static keyword allows data members to persist Values between different instances of a class.
There is no need to create a class object to access a static variable or call a static method: simply put the class name before the static variable or method name to use them.
Dart Static Variables
The static variables belong to the class instead of a specific instance. A static variable is common to all instances of a class: this means only a single copy of the static variable is shared among all the instances of a class. The memory allocation for static variables happens only once in the class area at the time of class loading.

Declaring Static Variables
Static variables can be declared using the static keyword followed by data type then the variable name

Syntax: static [date_type] [variable_name];
Accessing Static Variable
 The static variable can be accessed directly from the class name itself rather than creating an instance of it.


Syntax: Classname.staticVariable;
Dart Static Methods
The static method belongs to a class instead of class instances. A static method is only allowed to access the static variables of class and can invoke only static methods of the class. Usually, utility methods are created as static methods when we want it to be used by other classes without the need of creating an instance.

Declaring Static Methods
A static method can be declared using static keyword followed by return type, followed by method name

Syntax:

static return_type method_name()
{
    // Statement(s)
}
Calling Static Method
Static methods can be invoked directly from the class name itself rather than creating an instance of it.

Syntax: ClassName.staticMethod();
Example 1:

// Dart Program to show
// Static methods in Dart
class Employee {
  static var emp_dept;
  var emp_name;
  int emp_salary;
 
  // Function to show details
  // of the Employee
  showDetails() {
    print("Name of the Employee is: ${emp_name}");
    print("Salary of the Employee is: ${emp_salary}");
    print("Dept. of the Employee is: ${emp_dept}");
  }
}
 
// Main function
void main() {
  Employee e1 = new Employee();
  Employee e2 = new Employee();
  Employee.emp_dept = "MIS";
 
  print("GeeksforGeeks Dart static Keyword Example");
  e1.emp_name = 'Rahul';
  e1.emp_salary = 50000;
  e1.showDetails();
 
  e2.emp_name = 'Tina';
  e2.emp_salary = 55000;
  e2.showDetails();
}
Output:

GeeksforGeeks Dart static Keyword Example
Name of the Employee is: Rahul
Salary of the Employee is: 50000
Dept. of the Employee is: MIS
Name of the Employee is: Tina
Salary of the Employee is: 5
Dept. of the Employee is: MIS
 */