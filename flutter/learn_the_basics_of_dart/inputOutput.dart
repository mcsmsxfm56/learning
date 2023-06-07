/*
In Dart programming language, you can take standard input from the user through the console via the use of .readLineSync() function. To take input from the console you need to import a library, named dart:io from libraries of Dart.
 

About Stdin Class: 

This class allows the user to read data from standard input in both synchronous and asynchronous ways. The method readLineSync() is one of the methods used to take input from the user. Refer to the official doc for other methods, from here.
 

Taking a string input from user:
*/

// importing dart:io file
import 'dart:io';
 
void main()
{
    print("Enter your name?");
    // Reading name of the Geek
    String? name = stdin.readLineSync(); // null safety in name string
 
    // Printing the name
    print("Hello, $name! \nWelcome to GeeksforGeeks!!");

        // Asking for favourite number
    print("Enter your favourite number:");
 
   // Scanning number
    int? n = int.parse(stdin.readLineSync()!);
   // Here ? and ! are for null safety
 
    // Printing that number
    print("Your favourite number is $n");

    // Printing in first way
    print("Welcome to GeeksforGeeks! // printing from print statement");
 
    // Printing in second way
    stdout.write("Welcome to GeeksforGeeks! // printing from stdout.write()");

     print("-----------GeeksForGeeks-----------");
    print("Enter first number");
    int? n1 = int.parse(stdin.readLineSync()!);
 
    print("Enter second number");
    int? n2 = int.parse(stdin.readLineSync()!);
 
    // Adding them and printing them
    int sum = n1 + n2;
    print("Sum is $sum");
}