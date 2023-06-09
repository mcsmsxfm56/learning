/*
Getter and setter methods are the class methods used to manipulate the data of the class fields. Getter is used to read or get the data of the class field whereas setter is used to set the data of the class field to some variable.

Getter Method in Dart
It is used to retrieve a particular class field and save it in a variable. All classes have a default getter method but it can be overridden explicitly. The getter method can be defined using the get keyword as:

return_type get field_name{
    ...
}
It must be noted we have to define a return type but there is no need to define parameters in the above method.

Setter Method in Dart
It is used to set the data inside a variable received from the getter method. All classes have a default setter method but it can be overridden explicitly. The setter method can be defined using the set keyword as:


set field_name{
    ...
}
Example: Using the Getter and Setter method in the dart program.

// Creating Class named Gfg
class Gfg {
  // Creating a Field/Property
  String geekName;
 
  // Creating the getter method
  // to get input from Field/Property
  String get getName {
    return geekName;
  }
 
  // Creating the setter method
  // to set the input in Field/Property
  set setName(String name) {
    geekName = name;
  }
}
 
void main() {
  // Creating Instance of class
  Gfg geek = Gfg();
 
  // Calling the set_name method(setter method we created)
  // To set the value in Property "geekName"
  geek.setName = "GeeksForGeeks";
 
  // Calling the get_name method(getter method we created)
  // To get the value from Property "geekName"
  print("Welcome to ${geek.getName}");
}
Output:

Welcome to GeeksForGeeks
 */