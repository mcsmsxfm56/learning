/*
In Dart, super keyword is used to refer immediate parent class object. It is used to call properties and methods of the superclass. It does not call the method, whereas when we create an instance of subclass than that of the parent class is created implicitly so super keyword calls that instance.

Advantages of super keyword:

It can be used to access the data members of parent class when both parent and child have member with same name.
It is used to prevent overriding the parent method.
It can be used to call parameterized constructor of parent class.
Syntax:

// To access parent class variables
super.variable_name;

// To access parent class method
super.method_name();
Example #1: Showing the flow of object creation in inheritance.


class SuperGeek {
  
    // Creating parent constructor
    SuperGeek()
    {
        print("You are inside Parent constructor!!");
    }
}
  
class SubGeek extends SuperGeek {
  
    // Creating child constructor
    SubGeek()
    {
        print("You are inside Child constructor!!");
    }
}
  
void main()
{
    SubGeek geek = new SubGeek();
}
Output:

You are inside Parent constructor!!
You are inside Child constructor!!
 */