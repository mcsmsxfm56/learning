/*
Generators in Dart allows the user to produce a sequence of value easily. One can generate a sequence of values in dart with the help of two generator functions :

Synchronous Generator: Returns an Iterable object.
Asynchronous Generator: Returns a Stream object.
Synchronous Generator in Dart
The synchronous generator returns an iterable object i.e. it returns the collection of values, or “elements”, that can be accessed sequentially. To implement synchronous generator function, mark the function body as sync*, and use yield statements to deliver value(s).

Example: Implementing a synchronous generator in Dart.


// sync* functions return an iterable
Iterable geeksForGeeks(int number) sync* {
  int geek = number;
  while (geek >= 0) {
      
    // Checking for even number
    if (geek % 2 == 0) {
        
      // 'yield' suspends
      // the function
      yield geek;
        
    }
      
    // Decreasing the
    // variable geek
    geek--;
  }
}
  
// Main Function
void main() 
{ 
  print("------- Geeks For Geeks --------");
    
  print("Dart Synchronous Generator Example For Printing Even Numbers From 10 In
        Reverse Order:");
    
  // Printing positive even numbers
  // from 10 in reverse order
  geeksForGeeks(10).forEach(print);
}
Output:

--------------------- Geeks For Geeks ---------------------
Dart Synchronous Generator Example For Printing Even Numbers From 10 In Reverse Order:
10
8
6
4
2
0
Asynchronous Generator in Dart
The asynchronous generator returns a stream object. A Stream provides a way to receive a sequence of events. Each event is either a data event, also called an element of the stream, or an error event, which is a notification that something has failed. To implement an asynchronous generator function, mark the function body as async*, and use yield statements to deliver value(s).

Example: Implementing an asynchronous generator in Dart.

// async* function(s) return an stream
Stream geeksForGeeks(int number) async* {
  int geek = 0;
    
  // Checking for every
  // geek less than number
  while (geek <= number) yield geek++;
  // Incrementing geek
  // after printing it
}
  
// Main Function
void main() 
{ 
  print("-------- Geeks For Geeks -----------");
    
  print("Dart Asynchronous Generator Example For Printing Numbers Less Than 10:");
    
  // Printing numbers less
  // than or equal to 10
  geeksForGeeks(10).forEach(print);
}
 

Output:

--------------------- Geeks For Geeks ---------------------
Dart Asynchronous Generator Example For Printing Numbers Less Than 10:
0
1
2
3
4
5
6
7
8
9
10
 */