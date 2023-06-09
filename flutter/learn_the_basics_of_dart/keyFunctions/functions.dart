
int add(int a, int b)
{
    // Creating function
    int result = a + b;
    // returning value result
    return result;
}
 
void main()
{
    // Calling the function
    var output = add(10, 20);
 
    // Printing output
    print(output);
}

/*
Functions with Optional Parameter:
There are also optional parameter system in Dart which allows user to give some optional parameters inside the function. 

Sr. No.	Parameter	Description
1.	Optional Positional Parameter	To specify it use square (‘[ ]’) brackets
2.	Optional Named parameter	When we pass this parameter it is mandatory to pass it while passing values. It is specify by curly(‘{ }’) brackets.
3.	Optional parameter with default values	Here parameters are assign with default values.
Example: 

void gfg1(int g1, [ var g2 ])
{
    // Creating function 1
    print("g1 is $g1");
    print("g2 is $g2");
}
 
void gfg2(int g1, { var g2, var g3 })
{
    // Creating function 1
    print("g1 is $g1");
    print("g2 is $g2");
    print("g3 is $g3");
}
 
void gfg3(int g1, { int g2 : 12 })
{
    // Creating function 1
    print("g1 is $g1");
    print("g2 is $g2");
}
 
void main()
{
    // Calling the function with optional parameter
    print("Calling the function with optional parameter:");
    gfg1(01);
 
    // Calling the function with Optional Named parameter
    print("Calling the function with Optional Named parameter:");
    gfg2(01, g3 : 12);
 
    // Calling function with default valued parameter
    print("Calling function with default valued parameter");
    gfg3(01);
}
Output: 

Calling the function with optional parameter:
g1 is 1
g2 is null
Calling the function with Optional Named parameter:
g1 is 1
g2 is null
g3 is 12
Calling function with default valued parameter
g1 is 1
g2 is 12
 */


/// Computes the nth Fibonacci number.
int fibonacci(int n)
{
    // This is recursive function as it calls itself
    return n < 2 ? n : (fibonacci(n - 1) + fibonacci(n - 2));
}
 
void main()
{
    var i = 20; // input
    print('fibonacci($i) = ${fibonacci(i)}');
}
/*
Lambda Function in Dart:
They are the short way of representing a function in Dart. They are also called arrow function. But you should note that with lambda function you can return value for only one expression.
Example: Lambda function in dart. 
*/
// Lambda function in Dart
 
void gfg() => print("Welcome to GeeksforGeeks");
 
void main()
{
    gfg(); // Calling Lambda function
}