/*
Dart was traditionally designed to create single-page applications. And we also know that most computers, even mobile platforms, have multi-core CPUs. To take advantage of all those cores, developers traditionally use shared-memory threads running concurrently. However, shared-state concurrency is error-prone and can lead to complicated code. Instead of threads, all Dart code runs inside of isolates. Each isolate has its own memory heap, ensuring that no isolate’s state is accessible from any other isolate.

The isolates and threads are different than each other as in threads memory are shared whereas in isolates it is not. Moreover isolates talk to each other via passing messages.

To use isolates you have to add import 'dart:isolate'; statement in your program code.
Creating An Isolate In Dart
To create an isolate we make use of .spawn() method in Dart.

Syntax: Isolate isolate_name = await Isolate.spawn( parameter );
This parameter represents the port that will receive the message back.


Destroying An Isolate In Dart
To destroy the isolate we make use of .kill() method in Dart.

Syntax: isolate_name.kill( parameters );
We generally use spawn() and kill() together in a single program.

Example:  Creating an isolate in Dart.

// importing dart libraries
  
import 'dart:io';
import 'dart:async';
import 'dart:isolate';
  
// Creating geek isolate
Isolate geek;
  
void start_geek_process() async {
    
  // port for isolate to receive messages.
  ReceivePort geekReceive= ReceivePort();
  
  // Starting an isolate
  geek = await Isolate.spawn(gfg, geekReceive.sendPort);
}
  
void gfg(SendPort sendPort) {
  int counter = 0;
  
  // Printing Output message after every 2 sec.
  Timer.periodic(new Duration(seconds: 2), (Timer t) {
    // Increasing the counter
    counter++; 
      
    //Printing the output message
    stdout.writeln('Welcome to GeeksForGeeks $counter');  
  });
}
  
void stop_geek_process() {
    
  // Checking the isolate with null
  if (geek != null) {
      stdout.writeln('--------------Stopping Geek Isolate--------------');
  
      // Killing the isolate
      geek.kill(priority: Isolate.immediate);
  
      // Setting the isolate to null
      geek = null;        
  }  
}
  
// Main Function
void main() async {
  stdout.writeln('--------------Starting Geek Isolate--------------');
  
  // Starting the isolate with start_geek_process
  await start_geek_process();
  stdout.writeln('Press enter key to quit');
  
  // Whenever enter is hit the program is stopped
  await stdin.first;
  
  // Calling the stop_geek_process
  stop_geek_process();
  
  // Printing the goodbye message
  stdout.writeln('GoodBye Geek!');
  
  // Exiting the program.
  exit(0);
}
Output:

--------------Starting Geek Isolate--------------
Press enter key to quit
Welcome to GeeksForGeeks 1
Welcome to GeeksForGeeks 2
Welcome to GeeksForGeeks 3
Welcome to GeeksForGeeks 4
Welcome to GeeksForGeeks 5
Welcome to GeeksForGeeks 6
Welcome to GeeksForGeeks 7

--------------Stopping Geek Isolate--------------
GoodBye Geek!
Hitting enter after seventh output.
 */