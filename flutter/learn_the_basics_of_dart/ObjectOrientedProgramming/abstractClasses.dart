/*
An Abstract class in Dart is defined as those classes which contain one or more than one abstract method (methods without implementation) in them. Whereas, to declare an abstract class we make use of the abstract keyword. So, it must be noted that a class declared abstract may or may not include abstract methods but if it includes an abstract method then it must be an abstract class.

Features of Abstract Class:  

A class containing an abstract method must be declared abstract whereas the class declared abstract may or may not have abstract methods i.e. it can have either abstract or concrete methods
A class can be declared abstract by using abstract keyword only.
A class declared as abstract can’t be initialized.
An abstract class can be extended, but if you inherit an abstract class then you have to make sure that all the abstract methods in it are provided with implementation.
Generally, abstract classes are used to implement the abstract methods in the extended subclasses.

Syntax: 


abstract class class_name {

    // Body of the abstract class
}
Overriding abstract method of an abstract class.

Example 

// Understanding Abstract class in Dart
 
// Creating Abstract Class
abstract class Gfg {
    // Creating Abstract Methods
    void say();
    void write();
}
 
class Geeksforgeeks extends Gfg{
    @override
    void say()
    {
        print("Yo Geek!!");
    }
 
    @override
    void write()
    {
        print("Geeks For Geeks");
    }
}
 
main()
{
    Geeksforgeeks geek = new Geeksforgeeks();
    geek.say();
    geek.write();
}
Output: 

Yo Geek!!
Geeks For Geeks
Explanation: 

First, we declare an abstract class Gfg and create an abstract method geek_info inside it. After that, we extend the Gfg class to the second class and override the methods say() and write(), which result in their respective output.

Note: It is not mandatory to override the method when there is only one class extending the abstract class, because override is used to change the pre-defined code and as in the above case, nothing is defined inside the method so the above code will work just fine without override.

Overriding abstract method of an abstract class in two different classes

Example 

// Understanding Abstract Class In Dart
// Creating Abstract Class
abstract class Gfg {
    // Creating Abstract Method
    void geek_info();
}
 
// Class Geek1 Inheriting Gfg class
class Geek1 extends Gfg {
    // Overriding method
    @override
    void geek_info()
    {
        print("This is Class Geek1.");
    }
}
 
// Class Geek2 Inheriting Gfg class
class Geek2 extends Gfg {
    // Overriding method again
    @override
    void geek_info()
    {
        print("This is Class Geek2.");
    }
}
 
void main()
{
    Geek1 g1 = new Geek1();
    g1.geek_info();
    Geek2 g2 = new Geek2();
    g2.geek_info();
}
Output: 

This is Class Geek1.
This is Class Geek2.
 */