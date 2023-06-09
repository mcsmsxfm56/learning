//Dart also provides the user to manipulate a collection of data in the form of a queue. A queue is 
  //a FIFO (First In First Out) data structure where the element that is added first will be deleted 
  //first.

import 'dart:collection';
 
void main()
{
  // Creating a Queue
  Queue<String> geek = new Queue<String>();
   
  // Printing default
  // value of queue
  print(geek);//{}
   
  // Adding elements in a Queue
  geek.add("Geeks");
  geek.add("For");
  geek.add("Geeks");
   
  // Printing the
  // inserted elements
  print(geek);//{Geeks, For, Geeks}

  // Creating a List
  List<String> geek_list = ["Geeks","For","Geeks"];
   
  // Creating a Queue through a List
  Queue<String> geek_queue = new Queue<String>.from(geek_list);
   
  // Printing the elements
  // in the queue
  print(geek_queue);//{Geeks, For, Geeks}
}

/*
Functions of Queue in Dart:
Dart also provides functions to manipulate queue created in the dart. Some important functions are listed in the table below followed by the example to use them.

Sr.No.

Function Syntax

Description of the Function

1.

queue_name.add(element)	Adds the element inside the queue from the front.
2.

queue_name.addAll(collection_name)	
Adds all the element present in the collection_name (generally List).

3.

queue_name.addFirst(element)	Adds the element from front inside the queue.
4.

queue_name.addLast(element)	Adds the element from back in the queue.
5.

queue_name.clear()	Removes all the elements from the queue.
6.

queue_name.first()	Returns the first element from the queue.
7.

queue_name.forEach(f(element))	Returns all the element present in the queue.
8.

queue_name.isEmpty	Returns boolean true if the queue is empty else return false.
9.

queue_name.length	Returns the length of the queue.
10.

queue_name.removeFirst()	Removes the first element from the queue.
11.

queue_name.removeLast()	Removes the last element from the queue.
 */