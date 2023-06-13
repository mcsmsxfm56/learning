/*
this keyword represents an implicit object pointing to the current class object. It refers to the current instance of the class in a method or constructor. The this keyword is mainly used to eliminate the ambiguity between class attributes and parameters with the same name. When the class attributes and the parameter names are the same this keyword is used to avoid ambiguity by prefixing class attributes with this keyword. this keyword can be used to refer to any member of the current object from within an instance method or a constructor

Uses of this Keyword
It can be used to refer to the instance variable of the current class
It can be used to make or Initiate current class constructor
It can be passed as an argument in the method call
It can be passed as an argument in the constructor call
It can be used to make a current class method
It can be used to return the current class Instance



// Dart program to illustrate
// this keyword 
void main()
{
  Student s1 = new Student('S001');
}
  
class Student
{
  // defining local st_id variable
  var st_id;
  Student(var st_id)
  {
    // using this keyword
    this.st_id = st_id;
    print("GFG - Dart THIS Example");
    print("The Student ID is : ${st_id}");
  }
}
*/