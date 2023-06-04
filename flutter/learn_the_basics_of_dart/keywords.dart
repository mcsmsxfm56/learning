abstract
/*
LAS ABSTRACT CLASES SE USAN PARA TIPAR LAS CLASES COMUNES, DESPUES HACES UNA CLASE COMUN
EXTENDIENDO LA ABSTRACTA Y YA TENES LAS FUNCIONES TIPADOS, DESPUES LAS SOBREESCRIBIS Y IMPLEMENTAS EL CODIGO
DE DICHAS FUNCIONES
An Abstract class in Dart is defined as those classes which contain one or more than one abstract 
method
An Abstract class in Dart is defined as those classes which contain one or more than one abstract 
method
An abstract class cannot be instantiated but they can be sub-classed.

abstract class class_name {
  // Body of abstract class
}

Abstract Methods
Abstract methods can only exist within an abstract class.
To make a method abstract, use a semicolon (;) instead of the method body.

void talk (); // Abstract method
void walk (); // Abstract method

Normal classes can extend the abstract class, but they have to override every abstract method.
You can also create normal methods in the abstract class. And to override normal method is not mandatory.
The abstract class will only complain when you don’t override the abstract method.

abstract class Person{
void walk();  //Abstract Method
  void talk();  //Abstract Method
}
class Jay extends Person{
  @override
  void walk() {
    print("Jay can walk");
  }
@override
  void talk() {
    print("Jay can talk");
  }
}
main(){
  Jay jay = new Jay();
jay.talk();
  jay.walk();
}

Output
Jay can talk
Jay can walk
 */
else if true false
/*
if(condition1){
    return true
} else if(condition2){
    return true //Condition2
} else {
    return false
}

if (pair case [int x, int y]) return Point(x, y);
SI LA VARIABLE pair CUMPLE CON EL PATRON DE SER UN ARRAY CON DOS NUMEROS ENTEROS
if (pair case [int x, int y]) {
  print('Was coordinate array $x,$y');
} else {
  throw FormatException('Invalid coordinates.');
}
 */
import as show hide deferred library
/*
importas librerias
import 'dart:html';

If you import two libraries that have conflicting identifiers, then you can specify a prefix for one or both libraries. For example, if library1 and library2 both have an Element class, then you might have code like this:

import 'package:lib1/lib1.dart';
import 'package:lib2/lib2.dart' as lib2;

// Uses Element from lib1.
Element element1 = Element();

// Uses Element from lib2.
lib2.Element element2 = lib2.Element();

If you want to use only part of a library, you can selectively import the library. For example:

// Import only foo.
import 'package:lib1/lib1.dart' show foo;

// Import all names EXCEPT foo.
import 'package:lib2/lib2.dart' hide foo;

To lazily load a library, you must first import it using deferred as.

import 'package:greetings/hello.dart' deferred as hello;

When you need the library, invoke loadLibrary() using the library’s identifier.

Future<void> greet() async {
  await hello.loadLibrary();
  hello.printGreeting();
}

To specify library-level doc comments or metadata annotations, attach them to a library declaration 
at the start of the file.

/// A really great test library.
@TestOn('browser')
library;
 */
super


final const static
/*
If you never intend to change a variable, use final or const, either instead of var or in addition to 
a type. A final variable can be set only once; a const variable is a compile-time constant. 
(Const variables are implicitly final.)

Here’s an example of creating and setting a final variable:

final name = 'Bob'; // Without a type annotation
final String nickname = 'Bobby';
You can’t change the value of a final variable:

name = 'Alice'; // Error: a final variable can only be set once.

A compile-time constant is computed at the time the code is compiled, while a run-time constant can 
only be computed while the application is running, las variables compile-time sirven para tipar

final means that this variable will not be assigned again. const means that the following object can 
and will be instantiated before the program is run.

Use const for variables that you want to be compile-time constants. If the const variable is at the 
class level, mark it static const. Where you declare the variable, set the value to a compile-time 
constant such as a number or string literal, a const variable, or the result of an arithmetic 
operation on constant numbers:

const bar = 1000000; // Unit of pressure (dynes/cm2)
const double atm = 1.01325 * bar; // Standard atmosphere

Use the static keyword to implement class-wide variables and methods.
es para hacer una variable global en una clase en caso que se repita en varios metodos

Static variables
Static variables (class variables) are useful for class-wide state and constants:

class Queue {
  static const initialCapacity = 16;
  // ···
}

void main() {
  assert(Queue.initialCapacity == 16);
}

Static methods
Static methods (class methods) don’t operate on an instance, and thus don’t have access to this. 
They do, however, have access to static variables. As the following example shows, you invoke static 
methods directly on a class:

import 'dart:math';

class Point {
  double x, y;
  Point(this.x, this.y);

  static double distanceBetween(Point a, Point b) {
    var dx = a.x - b.x;
    var dy = a.y - b.y;
    return sqrt(dx * dx + dy * dy);
  }
}

void main() {
  var a = Point(2, 2);
  var b = Point(4, 4);
  var distance = Point.distanceBetween(a, b);
  assert(2.8 < distance && distance < 2.9);
  print(distance);
}
 */
enum 
/*
To declare a simple enumerated type, use the enum keyword and list the values you want to be 
enumerated:

enum Color { red, green, blue }

Dart also allows enum declarations to declare classes with fields, methods, and const constructors 
which are limited to a fixed number of known constant instances.

To declare an enhanced enum, follow a syntax similar to normal classes, but with a few extra 
requirements:

- Instance variables must be final, including those added by mixins.
las variables de inicio deben ser final
- All generative constructors must be constant.
- Factory constructors can only return one of the fixed, known enum instances.
- No other class can be extended as Enum is automatically extended.
- There cannot be overrides for index, hashCode, the equality operator ==.
- A member named values cannot be declared in an enum, as it would conflict with the automatically 
generated static values getter.
- All instances of the enum must be declared in the beginning of the declaration, and there must be 
at least one instance declared.

Instance methods in an enhanced enum can use this to reference the current enum value.

Here is an example that declares an enhanced enum with multiple instances, instance variables, getters, and an implemented interface:

enum Vehicle implements Comparable<Vehicle> {
  car(tires: 4, passengers: 5, carbonPerKilometer: 400),
  bus(tires: 6, passengers: 50, carbonPerKilometer: 800),
  bicycle(tires: 2, passengers: 1, carbonPerKilometer: 0);

  const Vehicle({
    required this.tires,
    required this.passengers,
    required this.carbonPerKilometer,
  });

  final int tires;
  final int passengers;
  final int carbonPerKilometer;

  int get carbonFootprint => (carbonPerKilometer / passengers).round();

  bool get isTwoWheeled => this == Vehicle.bicycle;

  @override
  int compareTo(Vehicle other) => carbonFootprint - other.carbonFootprint;
}
 */
in
/*in is used in a for in loop to iterate over an iterable (such as a list or set).
list es un array
set es un array que no puede tener elementos repetidos
void main() {
  var myList = [23, 42, 13, 15, 90];
  for (var item in myList)
    print(item);
}
 */
switch default case break
/*
The switch keyword is used in the switch case statement, which is a simplified version of the nested 
if-else statement.
switch(variable_expression) { 
   case constant_expr1: { 
      // statements; 
   } 
   break; 
  
   case constant_expr2: { 
      //statements; 
   } 
   break; 
      
   default: { 
      //statements;  
   }
   break; 
} 
 */
assert

export

interface

sync

async

extend

is

this

await

extension



throw

 break

external

mixin



case

factory

new



class






null

typedef

on

var



finally catch try
/*The finally is an optional block of the try-catch statement. The finally block always executes 
whether an exception occurs or not. 

try {
    // place the code that may cause exceptions
} catch(e) {
   // place the code that handles the exception
} finally {
   // place the code that clean up the resource
}*/
operator

void

continue

for

part

while

covariant     

function

rethrow

with



get

return

yield





set

do



dynamic

implements

