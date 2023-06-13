/*
var object_name = new class_name([ arguments ]);

new is the keyword use to declare the instance of the class
object_name is the name of the object and its naming is similar to the variable name in dart.
class_name is the name of the class whose instance variable is been created.
arguments are the input which are needed to be pass if we are willing to call a constructor.

 // For accessing the property
object_name.property_name;

// For accessing the method
object_name.method_name();


// Creating Class named Gfg
class Gfg {
 
    // Creating Field inside the class
    String geek1;
 
    // Creating Function inside class
    void geek()
    {
        print("Welcome to $geek1");
    }
}
 
void main()
{
    // Creating Instance of class
    Gfg geek = new Gfg();
 
    // Calling field name geek1 and assigning value
    // to it using object of the class Gfg
    geek.geek1 = 'GeeksforGeeks';
 
    // Calling function name geek using object of the class Gfg
    geek.geek();//Welcome to GeeksforGeeks
}
*/