abstract
/*
LAS ABSTRACT CLASES SE USAN PARA TIPAR LAS CLASES COMUNES, DESPUES HACES UNA CLASE COMUN
EXTENDIENDO LA ABSTRACTA Y YA TENES LAS FUNCIONES TIPADAS, DESPUES LAS SOBREESCRIBIS Y IMPLEMENTAS EL 
CODIGO DE DICHAS FUNCIONES, ESTOS METODOS DENTRO DE FUNCIONES ABSTRACTAS SE LLAMAN METODOS ABSRACTOS
Y SOLO TIENEN SU NOMBRE DEFINIDO, LAS CLASES ABSTRACTAS NO PUEDEN SER INSTANCIADAS

PARA QUE UNA CLASE SEA ABSTRACTA SOLO BASTA CON USAR LA KEYWORD abstract, PERO SI DEFINIS UNA CLASE
COMUN Y LE PONES 1 METODO ABSTRACTACTO SI O SI TENES QUE INDICAR QUE LA CLASE ES abstract

SI UNA CLASS COMUN EXTIENDE UNA CLASS ABSTRACTA TIENE QUE DEFINIR TODOS LOS METODOS ABSTRACTOS
TAMBIEN PODES HACER METODOS NORMALES EN LA ABSTRACT CLASS Y ES OPCIONAL DEFINIRLOS CUANDO LOS EXTENDES
*/
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

import as show hide deferred library
/*
importas librerias
import 'dart:html';

If you import two libraries that have conflicting identifiers, then you can specify a prefix for one 
or both libraries. For example, if library1 and library2 both have an Element class, then you might 
have code like this:
*/
import 'package:lib1/lib1.dart';
import 'package:lib2/lib2.dart' as lib2;

// Uses Element from lib1.
Element element1 = Element();

// Uses Element from lib2.
lib2.Element element2 = lib2.Element();
//If you want to use only part of a library, you can selectively import the library. For example:

// Import only foo.
import 'package:lib1/lib1.dart' show foo;

// Import all names EXCEPT foo.
import 'package:lib2/lib2.dart' hide foo;

//To lazily load a library, you must first import it using deferred as.

import 'package:greetings/hello.dart' deferred as hello;

//When you need the library, invoke loadLibrary() using the library’s identifier.

Future<void> greet() async {
  await hello.loadLibrary();
  hello.printGreeting();
}
/* 
To specify library-level doc comments or metadata annotations, attach them to a library declaration 
at the start of the file.
*/
/// A really great test library.
@TestOn('browser')
library;


super
/*
Use extends to create a subclass, and super to refer to the superclass:
*/
class Television {
  void turnOn() {
    _illuminateDisplay();
    _activateIrSensor();
  }
  // ···
}

class SmartTelevision extends Television {
  void turnOn() {
    super.turnOn();
    _bootNetworkInterface();
    _initializeMemory();
    _upgradeApps();
  }
  // ···
}

final const static 
/*
If you never intend to change a variable, use final or const, either instead of var or in addition to 
a type. A final variable can be set only once; a const variable is a compile-time constant. 
(Const variables are implicitly final.)

Here’s an example of creating and setting a final variable:
*/
final name = 'Bob'; // Without a type annotation
final String nickname = 'Bobby';
//You can’t change the value of a final variable:

name = 'Alice'; // Error: a final variable can only be set once.
/*
A compile-time constant is computed at the time the code is compiled, while a run-time constant can 
only be computed while the application is running, las variables compile-time sirven para tipar

compilar es el proceso de convertir codigo dart a lenguaje maquina(binario)

Use const for variables that you want to be compile-time constants. If the const variable is at the 
class level, mark it static const. Where you declare the variable, set the value to a compile-time 
constant such as a number or string literal, a const variable, or the result of an arithmetic 
operation on constant numbers:
*/
const bar = 1000000; // Unit of pressure (dynes/cm2)
const double atm = 1.01325 * bar; // Standard atmosphere
/*
Use the static keyword to implement class-wide variables and methods.
es para hacer una variable global en una clase en caso que se repita en varios metodos
*/
class Queue {
  static const initialCapacity = 16;
  // ···
}

void main() {
  assert(Queue.initialCapacity == 16);
}
/*
Static methods
Static methods (class methods) no funcionan en una nueva instancia, and thus don’t have access to this. 
They do, however, have access to static variables. As the following example shows, you invoke static 
methods directly on a class:
*/
import 'dart:math';

class Point {
  double x, y; //se declaran variables double x y
  Point(this.x, this.y);

  static double distanceBetween(Point a, Point b) {
    //funcion estatica que retorna un type double
    var dx = a.x - b.x;
    var dy = a.y - b.y;
    return sqrt(dx * dx + dy * dy);
  }
}

void main() {
  var a = Point(2, 2); //x = 2 y =2
  var b = Point(4, 4); //x = 4 y = 4
  var distance = Point.distanceBetween(a, b);//los metodos estaticos solo pueden invocarse asi
    dx = a.x - b.x //(2) - (4) = -2
    dy = a.y - b.y //(2) - (4) = -2
    return sqrt(dx * dx + dy * dy) //= sqrt(4 + 4) = sqrt(8) = 2.82 aprox
  assert(2.8 < distance && distance < 2.9); //true, si fuera false retorna mensaje de error
  print(distance);
}
/*
You can use static methods as compile-time constants(osea usarlos para tipar). For example, you can 
pass a static method as a parameter to a constant constructor.

You can define constants that use type checks and casts (is and as), collection if, and spread 
operators (... and ...?):
*/
const Object i = 3; // Where i is a const Object with an int value...
const list = [i as int]; // Use a typecast.
const map = {if (i is int) i: 'int'}; // Use is and collection if.
const set = {if (list is List<int>) ...list}; // ...and a spread.
/*
USO DE FINAL KEYWORD EN CLASES
To close the type hierarchy, use the final modifier. This prevents subtyping from a class outside of 
the current library Disallowing both inheritance and implementation prevents subtyping entirely. 
This guarantees:
You can safely add incremental changes to the API.
You can call instance methods knowing that they haven’t been overwritten in a third-party subclass.

PARA CERRAR EL ARBOL GENEALOGICO DE TIPADO USA EL final KEYWORD, ESTO EVITA EL SUBTIPADO Y DESHABILITA
LA IMPLEMENTACION Y LA HERENCIA EN LIBRERIAS EXTERNAS

OSEA QUE SI DEFINO UNA CLASE CON FINAL ESTA CLASE SOLO PODRA SER EXTENDIDA POR CLASES QUE FORMEN
PARTE DE SU LIBRERIA

Final classes can be extended or implemented within the same library. The final modifier encompasses 
the effects of base, and therefore any subclasses must also be marked base, final, or sealed.
*/
// Library a.dart
final class Vehicle {
  void moveForward(int meters) {
    // ...
  }
}

// Library b.dart
import 'a.dart';

// Can be constructed
Vehicle myVehicle = Vehicle();

// ERROR: Cannot be inherited
class Car extends Vehicle {
  int passengers = 4;
  // ...
}

class MockVehicle implements Vehicle {
  // ERROR: Cannot be implemented
  @override
  void moveForward(int meters) {
    // ...
  }
}
 
enum 
/*
To declare a simple enumerated type, use the enum keyword and list the values you want to be 
enumerated:
*/
enum Color { red, green, blue }
/*
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

Here is an example that declares an enhanced enum with multiple instances, instance variables, 
getters, and an implemented interface:
*/
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

//Access the enumerated values like any other static variable:

final favoriteColor = Color.blue;
if (favoriteColor == Color.blue) {
  print('Your favorite color is blue!');
}
/*
Each value in an enum has an index getter, which returns the zero-based position of the value in 
the enum declaration. For example, the first value has index 0, and the second value has index 1.
*/
assert(Color.red.index == 0);
assert(Color.green.index == 1);
assert(Color.blue.index == 2);
//To get a list of all the enumerated values, use the enum’s values constant.

List<Color> colors = Color.values;
assert(colors[2] == Color.blue);
/*
You can use enums in switch statements, and you’ll get a warning if you don’t handle all of the 
enum’s values:
*/
var aColor = Color.blue;

switch (aColor) {
  case Color.red:
    print('Red as roses!');
    break;
  case Color.green:
    print('Green as grass!');
    break;
  default: // Without this, you see a WARNING.
    print(aColor); // 'Color.blue'
}
/*
If you need to access the name of an enumerated value, such as 'blue' from Color.blue, use the 
.name property:
*/
print(Color.blue.name); // 'blue'
//You can access a member of an enum value like you would on a normal object:

print(Vehicle.car.carbonFootprint);
 
in
/*
in is used in a for in loop to iterate over an iterable (such as a list or set).
list es un array
set es un array que no puede tener elementos repetidos
void main() {
  var myList = [23, 42, 13, 15, 90];
  for (var item in myList)
    print(item);
}
*/

base
/*
To enforce inheritance of a class or mixin’s implementation, use the base modifier. A base class 
disallows implementation outside of its own library. This guarantees:

The base class constructor is called whenever an instance of a subtype of the class is created.
All implemented private members exist in subtypes.
A new implemented member in a base class does not break subtypes, since all subtypes inherit the new 
member. This is true unless the subtype already declares a member with the same name and an 
incompatible signature. You must mark any class which implements or extends a base class as base, 
final, or sealed. This prevents outside libraries from breaking the base class guarantees.
*/
// Library a.dart
base class Vehicle {
  void moveForward(int meters) {
    // ...
  }
}
// Library b.dart
import 'a.dart';

// Can be constructed
Vehicle myVehicle = Vehicle();

// Can be extended
base class Car extends Vehicle {
  int passengers = 4;
  // ...
}

// ERROR: Cannot be implemented, ASI SE EVITA QUE SE SOBREESCRIBAN LOS METODOS DE LA SUPERCLASS
base class MockVehicle implements Vehicle {
  @override
  void moveForward() {
    // ...
  }
}
 
switch default case break
//SAME AS JAVASCRIPT

assert
/*
During development, use an assert statement— assert(<condition>, <optionalMessage>); —to disrupt 
normal execution if a boolean condition is false.
*/
// Make sure the variable has a non-null value.
assert(text != null);

// Make sure the value is less than 100.
assert(number < 100);

// Make sure this is an https URL.
assert(urlString.startsWith('https'));
/*
To attach a message to an assertion, add a string as the second argument to assert (optionally with 
a trailing comma):
*/
assert(urlString.startsWith('https'),
    'URL ($urlString) should start with "https".');

export
/*
The Dart ecosystem uses packages to share software such as libraries and tools. This page tells you 
how to create a package, with a focus on the most common kind of package, library packages.

Creating a new package
To create the initial directory and structure for a package, use the dart create command and the 
package template:

 dart create -t package <PACKAGE_NAME>
What makes a library package
The following diagram shows the layout of the simplest library package:

root directory contains pubspec.yaml and lib/file.dart

The minimal requirements for a library are:

pubspec file
The pubspec.yaml file for a library is the same as for an application package—there is no special 
designation to indicate that the package is a library. lib directory
As you might expect, the library code lives under the lib directory and is public to other packages. 
You can create any hierarchy under lib, as needed. By convention, implementation code is placed 
under lib/src. Code under lib/src is considered private; other packages should never need to import 
src/.... To make APIs under lib/src public, you can export lib/src files from a file that’s directly 
under lib.

Organizing a library package
Library packages are easiest to maintain, extend, and test when you create small, individual 
libraries, referred to as mini libraries. In most cases, each class should be in its own mini 
library, unless you have a situation where two classes are tightly coupled.

Note: You may have heard of the part directive, which allows you to split a library into multiple 
Dart files. We recommend that you avoid using part and create mini libraries instead.

Create a “main” library file directly under lib, lib/<package-name>.dart, that exports all of the 
public APIs. This allows the user to get all of a library’s functionality by importing a single file.

The lib directory might also include other importable, non-src, libraries. For example, perhaps your 
main library works across platforms, but you create separate libraries that rely on dart:io or 
dart:html. Some packages have separate libraries that are meant to be imported with a prefix, when 
the main library is not.

Let’s look at the organization of a real-world library package: shelf. The shelf package provides an 
easy way to create web servers using Dart, and is laid out in a structure that is commonly used for 
Dart library packages:

shelf root directory contains example, lib, test, and tool subdirectories

Directly under lib, the main library file, shelf.dart, exports API from several files in lib/src. To 
avoid exposing more API than intended—and to give developers an overview of the entire public API of 
the package—shelf.dart uses show to specify exactly which symbols to export:

export 'src/cascade.dart' show Cascade;
export 'src/handler.dart' show Handler;
export 'src/hijack_exception.dart' show HijackException;
export 'src/middleware.dart' show Middleware, createMiddleware;
export 'src/middleware/add_chunked_encoding.dart' show addChunkedEncoding;
export 'src/middleware/logger.dart' show logRequests;
export 'src/middleware_extensions.dart' show MiddlewareExtensions;
export 'src/pipeline.dart' show Pipeline;
export 'src/request.dart' show Request;
export 'src/response.dart' show Response;
export 'src/server.dart' show Server;
export 'src/server_handler.dart' show ServerHandler;
The shelf package also contains a mini library: shelf_io. This adapter handles HttpRequest objects 
from dart:io.

 Tip: For the best performance when developing with dartdevc, put implementation files under 
 /lib/src, instead of elsewhere under /lib. Also, avoid imports of package:package_name/src/....

Importing library files
When importing a library file from another package, use the package: directive to specify the URI of 
that file.

import 'package:utilities/utilities.dart';
When importing a library file from your own package, use a relative path when both files are inside 
of lib, or when both files are outside of lib. Use package: when the imported file is in lib and the 
importer is outside.

The following graphic shows how to import lib/foo/a.dart from both lib and web.

lib/bar/b.dart uses a relative import; web/main.dart uses a package import

Conditionally importing and exporting library files
If your library supports multiple platforms, then you might need to conditionally import or export 
library files. A common use case is a library that supports both web and native platforms.

To conditionally import or export, you need to check for the presence of dart:* libraries. Here’s an 
example of conditional export code that checks for the presence of dart:io and dart:html:

export 'src/hw_none.dart' // Stub implementation
    if (dart.library.io) 'src/hw_io.dart' // dart:io implementation
    if (dart.library.html) 'src/hw_html.dart'; // dart:html implementation
lib/hw_mp.dart
Here’s what that code does:

In an app that can use dart:io (for example, a command-line app), export src/hw_io.dart.
In an app that can use dart:html (a web app), export src/hw_html.dart.
Otherwise, export src/hw_none.dart.
To conditionally import a file, use the same code as above, but change export to import.

 Note: The conditional import or export checks only whether the library is available for use on the 
 current platform, not whether it’s actually imported or used.

All of the conditionally exported libraries must implement the same API. For example, here’s the 
dart:io implementation:

import 'dart:io';

void alarm([String? text]) {
  stderr.writeln(text ?? message);
}

String get message => 'Hello World from the VM!';
lib/src/hw_io.dart
And here’s the default implementation, which uses stubs that throw UnsupportedError:

void alarm([String? text]) => throw UnsupportedError('hw_none alarm');

String get message => throw UnsupportedError('hw_none message');
lib/src/hw_none.dart
On any platform, you can import the library that has the conditional export code:

import 'package:hw_mp/hw_mp.dart';

void main() {
  print(message);
}
Providing additional files
A well-designed library package is easy to test. We recommend that you write tests using the test 
package, placing the test code in the test directory at the top of the package.

If you create any command-line tools intended for public consumption, place those in the bin 
directory, which is public. Enable running a tool from the command line, using dart pub global 
activate. Listing the tool in the executables section of the pubspec allows a user to run it 
directly without calling dart pub global run.

It’s helpful if you include an example of how to use your library. This goes into the example 
directory at the top of the package.

Any tools or executables that you create during development that aren’t for public use go into the 
tool directory.

Other files that are required if you publish your library to the pub.dev site, such as README.md and 
CHANGELOG.md, are described in Publishing a package. For more information on how to organize a 
package directory, see the pub package layout conventions.

Documenting a library
You can generate API docs for your library using the dart doc tool. dart doc parses the source 
looking for documentation comments, which use the /// syntax:

/// The event handler responsible for updating the badge in the UI.
void updateBadge() {
  ...
}
For an example of generated docs, see the shelf documentation.

To include any library-level documentation in the generated docs, add a library directive and 
attach the comment directly above it. For the how-and-why of documenting libraries, see Effective 
Dart: Documentation.

Distributing an open source library
If your library is open source, we recommend sharing it on the pub.dev site. To publish or update 
the library, use pub publish, which uploads your package and creates or updates its page. For 
example, see the page for the shelf package. See Publishing a package for details on how to prepare 
your package for publishing.

The pub.dev site not only hosts your package, but also generates and hosts your package’s API 
reference docs. A link to the latest generated docs is in the package’s About box; for example, 
see the shelf package’s API docs. Links to previous versions’ docs are in the Versions tab of the 
package’s page.

To ensure that your package’s API docs look good on the pub.dev site, follow these steps:

Before publishing your package, run the dart doc tool to make sure that your docs generate 
successfully and look as expected. After publishing your package, check the Versions tab to make 
sure that the docs generated successfully. If the docs didn’t generate at all, click failed in the 
Versions tab to see the dart doc output.
*/
interface
/*
To define an interface, use the interface modifier. Libraries outside of the interface’s own 
defining library can implement the interface, but not extend it. This guarantees:

When one of the class’s instance methods calls another instance method on this, it will always invoke a known implementation of the method from the same library.
Other libraries can’t override methods that the interface class’s own methods might later call in unexpected ways. This reduces the fragile base class problem.
*/
// Library a.dart
interface class Vehicle {
  void moveForward(int meters) {
    // ...
  }
}
// Library b.dart
import 'a.dart';

// Can be constructed
Vehicle myVehicle = Vehicle();

// ERROR: Cannot be inherited
class Car extends Vehicle {
  int passengers = 4;
  // ...
}

// Can be implemented
class MockVehicle implements Vehicle {
  @override
  void moveForward(int meters) {
    // ...
  }
}
/*
The most common use for the interface modifier is to define a pure interface. Combine the interface 
and abstract modifiers for an abstract interface class.

Like an interface class, other libraries can implement, but cannot inherit, a pure interface. Like 
an abstract class, a pure interface can have abstract members.
 */
sync yield
/*
When you need to lazily produce a sequence of values, consider using a generator function. Dart has 
built-in support for two kinds of generator functions:

Synchronous generator: Returns an Iterable object.
Asynchronous generator: Returns a Stream object.
To implement a synchronous generator function, mark the function body as sync*, and use yield 
statements to deliver values:
*/
Iterable<int> naturalsTo(int n) sync* {
  int k = 0;
  while (k < n) yield k++;
}
/*
To implement an asynchronous generator function, mark the function body as async*, and use yield 
statements to deliver values:
*/
Stream<int> asynchronousNaturalsTo(int n) async* {
  int k = 0;
  while (k < n) yield k++;
}
//If your generator is recursive, you can improve its performance by using yield*:

Iterable<int> naturalsDownFrom(int n) sync* {
  if (n > 0) {
    yield n;
    yield* naturalsDownFrom(n - 1);
  }
}



sealed
/*
To create a known, enumerable set of subtypes, use the sealed modifier. This allows you to create a 
switch over those subtypes that is statically ensured to be exhaustive.
SEALED SIRVE PARA HACER UN ENUM PERO CON CLASES, ASEGURANDOSE QUE CADA SUBCLASE DENTRO DE ELLA
DEBA SER INVOCADA

The sealed modifier prevents a class from being extended or implemented outside its own library. 
Sealed classes are implicitly abstract.

They cannot be constructed themselves.
They can have factory constructors.
They can define constructors for their subclasses to use.
Subclasses of sealed classes are, however, not implicitly abstract.

The compiler is aware of any possible direct subtypes because they can only exist in the same library. 
This allows the compiler to alert you when a switch does not exhaustively handle all possible 
subtypes in its cases:

sealed class Vehicle {}

class Car extends Vehicle {}

class Truck implements Vehicle {}

class Bicycle extends Vehicle {}

// ERROR: Cannot be instantiated
Vehicle myVehicle = Vehicle();

// Subclasses can be instantiated
Vehicle myCar = Car();

String getVehicleSound(Vehicle vehicle) {
  // ERROR: The switch is missing the Bicycle subtype or a default case.
  return switch (vehicle) {
    Car() => 'vroom',
    Truck() => 'VROOOOMM',
  };
}

If you don’t want exhaustive switching, or want to be able to add subtypes later without breaking the 
API, use the final modifier.
 */

is
/*
The as, is, and is! operators are handy for checking types at runtime.
is	True if the object has the specified type
*/
this
/*
Declare a constructor by creating a function with the same name as its class (plus, optionally, an additional identifier as described in Named constructors). The most common form of constructor, the generative constructor, creates a new instance of a class:

class Point {
  double x = 0;
  double y = 0;

  Point(double x, double y) {
    // See initializing formal parameters for a better way
    // to initialize instance variables.
    this.x = x;
    this.y = y;
  }
}
The this keyword refers to the current instance.

 Note: Use this only when there is a name conflict. Otherwise, Dart style omits the this.
*/

extension
/*
Extension methods add functionality to existing libraries
When you’re using someone else’s API or when you implement a library that’s widely used, it’s often impractical or impossible to change the API. But you might still want to add some functionality.

For example, consider the following code that parses a string into an integer:

int.parse('42')
It might be nice—shorter and easier to use with tools—to have that functionality be on String instead:

'42'.parseInt()
To enable that code, you can import a library that contains an extension of the String class:

import 'string_apis.dart';
// ···
print('42'.parseInt()); // Use an extension method.
Extensions can define not just methods, but also other members such as getter, setters, and operators. Also, extensions can have names, which can be helpful if an API conflict arises. Here’s how you might implement the extension method parseInt(), using an extension (named NumberParsing) that operates on strings:

extension NumberParsing on String {
  int parseInt() {
    return int.parse(this);
  }
  // ···
}
lib/string_apis.dart
The next section describes how to use extension methods. After that are sections about implementing extension methods.

Using extension methods
Like all Dart code, extension methods are in libraries. You’ve already seen how to use an extension method—just import the library it’s in, and use it like an ordinary method:

// Import a library that contains an extension on String.
import 'string_apis.dart';
// ···
print('42'.padLeft(5)); // Use a String method.
print('42'.parseInt()); // Use an extension method.
That’s all you usually need to know to use extension methods. As you write your code, you might also need to know how extension methods depend on static types (as opposed to dynamic) and how to resolve API conflicts.

Static types and dynamic
You can’t invoke extension methods on variables of type dynamic. For example, the following code results in a runtime exception:

dynamic d = '2';
print(d.parseInt()); // Runtime exception: NoSuchMethodError
Extension methods do work with Dart’s type inference. The following code is fine because the variable v is inferred to have type String:

var v = '2';
print(v.parseInt()); // Output: 2
The reason that dynamic doesn’t work is that extension methods are resolved against the static type of the receiver. Because extension methods are resolved statically, they’re as fast as calling a static function.

For more information about static types and dynamic, see The Dart type system.

API conflicts
If an extension member conflicts with an interface or with another extension member, then you have a few options.

One option is changing how you import the conflicting extension, using show or hide to limit the exposed API:

// Defines the String extension method parseInt().
import 'string_apis.dart';

// Also defines parseInt(), but hiding NumberParsing2
// hides that extension method.
import 'string_apis_2.dart' hide NumberParsing2;

// ···
// Uses the parseInt() defined in 'string_apis.dart'.
print('42'.parseInt());
Another option is applying the extension explicitly, which results in code that looks as if the extension is a wrapper class:

// Both libraries define extensions on String that contain parseInt(),
// and the extensions have different names.
import 'string_apis.dart'; // Contains NumberParsing extension.
import 'string_apis_2.dart'; // Contains NumberParsing2 extension.

// ···
// print('42'.parseInt()); // Doesn't work.
print(NumberParsing('42').parseInt());
print(NumberParsing2('42').parseInt());
If both extensions have the same name, then you might need to import using a prefix:

// Both libraries define extensions named NumberParsing
// that contain the extension method parseInt(). One NumberParsing
// extension (in 'string_apis_3.dart') also defines parseNum().
import 'string_apis.dart';
import 'string_apis_3.dart' as rad;

// ···
// print('42'.parseInt()); // Doesn't work.

// Use the ParseNumbers extension from string_apis.dart.
print(NumberParsing('42').parseInt());

// Use the ParseNumbers extension from string_apis_3.dart.
print(rad.NumberParsing('42').parseInt());

// Only string_apis_3.dart has parseNum().
print('42'.parseNum());
As the example shows, you can invoke extension methods implicitly even if you import using a prefix. The only time you need to use the prefix is to avoid a name conflict when invoking an extension explicitly.

Implementing extension methods
Use the following syntax to create an extension:

extension <extension name>? on <type> {
  (<member definition>)*
}
For example, here’s how you might implement an extension on the String class:

extension NumberParsing on String {
  int parseInt() {
    return int.parse(this);
  }

  double parseDouble() {
    return double.parse(this);
  }
}
lib/string_apis.dart
The members of an extension can be methods, getters, setters, or operators. Extensions can also have static fields and static helper methods.

Unnamed extensions
When declaring an extension, you can omit the name. Unnamed extensions are visible only in the library where they’re declared. Since they don’t have a name, they can’t be explicitly applied to resolve API conflicts.

extension on String {
  bool get isBlank => trim().isEmpty;
}
 Note: You can invoke an unnamed extension’s static members only within the extension declaration.

Implementing generic extensions
Extensions can have generic type parameters. For example, here’s some code that extends the built-in List<T> type with a getter, an operator, and a method:

extension MyFancyList<T> on List<T> {
  int get doubleLength => length * 2;
  List<T> operator -() => reversed.toList();
  List<List<T>> split(int at) => [sublist(0, at), sublist(at)];
}
The type T is bound based on the static type of the list that the methods are called on.
 */


throw
/*
Here’s an example of throwing, or raising, an exception:

throw FormatException('Expected at least 1 section');
You can also throw arbitrary objects:

throw 'Out of llamas!';
 Note: Production-quality code usually throws types that implement Error or Exception.

Because throwing an exception is an expression, you can throw exceptions in => statements, as well 
as anywhere else that allows expressions:

void distanceTo(Point other) => throw UnimplementedError();
*/
external
/*
DartLangSpecDraft.pdf section 9.4
*/
mixin with
/*
Mixins are a way of defining code that can be reused in multiple class hierarchies. They are intended 
to provide member implementations en masse.
LAS CLASS EN PRINCIPIO SOLO TIENEN UNA SUPERCLASS UNICA, PERO A VECES HAY 2 O MAS CLASSES QUE TIENEN
UNA SUPERCLASS DISTINTA PERO TIENEN METODOS EN COMUN, 
UNA FORMA DE ARREGLAR ESTO ES CON CLASS IMPLEMENTS CLASS_CON_METODO_EN_COMUN PERO TENDRIAS QUE REDEFINIR
LAS VARIABLES Y SI SON MUCHAS SERIA LARGUISIMO DE HACER
Necesitas una forma de reutilizar código de una clase en múltiples jerarquías de clases. ¿Lo sabes? 
Los Mixins son exactamente eso:
Los Mixins son una forma de reutilizar código de una clase en múltiples jerarquías de clase.
MIXIN_EXAMPLE.png

To use a mixin, use the with keyword followed by one or more mixin names. The following example shows 
two classes that use mixins:

class Musician extends Performer with Musical {
  // ···
}

class Maestro extends Person with Musical, Aggressive, Demented {
  Maestro(String maestroName) {
    name = maestroName;
    canConduct = true;
  }
}

Mixins are a way of defining code that can be reused in multiple class hierarchies. They are intended to provide member implementations en masse.

To use a mixin, use the with keyword followed by one or more mixin names. The following example shows two classes that use mixins:

class Musician extends Performer with Musical {
  // ···
}

class Maestro extends Person with Musical, Aggressive, Demented {
  Maestro(String maestroName) {
    name = maestroName;
    canConduct = true;
  }
}
To define a mixin, use the mixin declaration. In the rare case where you need to define both a mixin and a class, you can use the mixin class declaration.

Mixins and mixin classes cannot have an extends clause, and must not declare any generative constructors.

For example:

mixin Musical {
  bool canPlayPiano = false;
  bool canCompose = false;
  bool canConduct = false;

  void entertainMe() {
    if (canPlayPiano) {
      print('Playing piano');
    } else if (canConduct) {
      print('Waving hands');
    } else {
      print('Humming to self');
    }
  }
}
Sometimes you might want to restrict the types that can use a mixin. For example, the mixin might depend on being able to invoke a method that the mixin doesn’t define. As the following example shows, you can restrict a mixin’s use by using the on keyword to specify the required superclass:

class Musician {
  // ...
}
mixin MusicalPerformer on Musician {
  // ...
}
class SingerDancer extends Musician with MusicalPerformer {
  // ...
}
In the preceding code, only classes that extend or implement the Musician class can use the mixin MusicalPerformer. Because SingerDancer extends Musician, SingerDancer can mix in MusicalPerformer.

class, mixin, or mixin class?
 Version note: The mixin class declaration requires a language version of at least 3.0.

A mixin declaration defines a mixin. A class declaration defines a class. A mixin class declaration defines a class that is usable as both a regular class and a mixin, with the same name and the same type.

Any restrictions that apply to classes or mixins also apply to mixin classes:

Mixins can’t have extends or with clauses, so neither can a mixin class.
Classes can’t have an on clause, so neither can a mixin class.
abstract mixin class
You can achieve similar behavior to the on directive for a mixin class. Make the mixin class abstract 
and define the abstract methods its behavior depends on:

abstract mixin class Musician {
  // No 'on' clause, but an abstract method that other types must define if 
  // they want to use (mix in or extend) Musician: 
  void playInstrument(String instrumentName);

  void playPiano() {
    playInstrument('Piano');
  }
  void playFlute() {
    playInstrument('Flute');
  }
}

class Virtuoso with Musician { // Use Musician as a mixin
  void playInstrument(String instrumentName) {
    print('Plays the $instrumentName beautifully');
  }  
} 

class Novice extends Musician { // Use Musician as a class
  void playInstrument(String instrumentName) {
    print('Plays the $instrumentName poorly');
  }  
} 
By declaring the Musician mixin as abstract, you force any type that uses it to define the abstract 
method upon which its behavior depends.

This is similar to how the on directive ensures a mixin has access to any interfaces it depends on by 
specifying the superclass of that interface.
*/
required
/*
Named parameters are optional unless they’re explicitly marked as required.

When defining a function, use {param1, param2, …} to specify named parameters. If you don’t provide 
a default value or mark a named parameter as required, their types must be nullable as their default 
value will be null:


*/
factory
/*
Use the factory keyword when implementing a constructor that doesn’t always create a new instance of
its class. For example, a factory constructor might return an instance from a cache, or it might 
return an instance of a subtype. Another use case for factory constructors is initializing a final 
variable using logic that can’t be handled in the initializer list.

In the following example, the Logger factory constructor returns objects from a cache, and the 
Logger.fromJson factory constructor initializes a final variable from a JSON object.

class Logger {
  final String name;
  bool mute = false;

  // _cache is library-private, thanks to
  // the _ in front of its name.
  static final Map<String, Logger> _cache = <String, Logger>{};

  factory Logger(String name) {
    return _cache.putIfAbsent(name, () => Logger._internal(name));
  }

  factory Logger.fromJson(Map<String, Object> json) {
    return Logger(json['name'].toString());
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) print(msg);
  }
}

Invoke a factory constructor just like you would any other constructor:

var logger = Logger('UI');
logger.log('Button clicked');

var logMap = {'name': 'UI'};
var loggerJson = Logger.fromJson(logMap);

*/

class
/*
Inheritance allows us to create new classes that reuse, extend and/or modify pre-existing classes 
behavior. The pre-existing class is called superclass and the new class we're creating is called 
derived class. In Dart, we can inherit only one superclass, but inheritance is transitive. If the 
class Hatch is derived from the class Car and this class is derived from class Vehicle, then Hatch 
will be derived from Vehicle. Use extends to create derived class, and super when you want to refer 
to the superclass.

You can combine some modifiers for layered restrictions. A class declaration can be, in order:

(Optional) abstract, describing whether the class can contain abstract members and prevents 
instantiation.
(Optional) One of base, interface, final or sealed, describing restrictions on other libraries 
subtyping the class.
(Optional) mixin, describing whether the declaration can be mixed in.
The class keyword itself.
You can’t combine some modifiers because they are contradictory, redundant, or otherwise mutually 
exclusive:

abstract with sealed. A sealed class is always implicitly abstract.
interface, final or sealed with mixin. These access modifiers prevent mixing in.
*/
null
/*
Uninitialized variables that have a nullable type have an initial value of null. Even variables with 
numeric types are initially null, because numbers—like everything else in Dart—are objects.

int? lineCount;
assert(lineCount == null);
 Note: Production code ignores the assert() call. During development, on the other hand, 
 assert(condition) throws an exception if condition is false. For details, check out Assert.

With null safety, you must initialize the values of non-nullable variables before you use them:

int lineCount = 0;
You don’t have to initialize a local variable where it’s declared, but you do need to assign it a 
value before it’s used. For example, the following code is valid because Dart can detect that 
lineCount is non-null by the time it’s passed to print():

int lineCount;

if (weLikeToCount) {
  lineCount = countLines();
} else {
  lineCount = 0;
}

print(lineCount);
Top-level and class variables are lazily initialized; the initialization code runs the first time 
the variable is used.
*/
typedef
/*
definicion de tipados
typedef IntList = List<int>;
IntList il = [1, 2, 3];

We recommend using inline function types instead of typedefs for functions, in most situations. 
However, function typedefs can still be useful:

typedef Compare<T> = int Function(T a, T b);

int sort(int a, int b) => a - b;

void main() {
  assert(sort is Compare<int>); // True!
}
*/

var
//define variables



on rethrow

try {
  breedMoreLlamas();
} on OutOfLlamasException {
  buyMoreLlamas();
}
/*
To handle code that can throw more than one type of exception, you can specify multiple catch 
clauses. The first catch clause that matches the thrown object’s type handles the exception. 
If the catch clause does not specify a type, that clause can handle any type of thrown object:
*/

try {
  breedMoreLlamas();
} on OutOfLlamasException {
  // A specific exception
  buyMoreLlamas();
} on Exception catch (e) {
  // Anything else that is an exception
  print('Unknown exception: $e');
} catch (e) {
  // No specified type, handles all
  print('Something really unknown: $e');
}
/*
As the preceding code shows, you can use either on or catch or both. Use on when you need to specify 
the exception type. Use catch when your exception handler needs the exception object.

You can specify one or two parameters to catch(). The first is the exception that was thrown, and 
the second is the stack trace (a StackTrace object).
*/
try {
  // ···
} on Exception catch (e) {
  print('Exception details:\n $e');
} catch (e, s) {
  print('Exception details:\n $e');
  print('Stack trace:\n $s');
}
//To partially handle an exception, while allowing it to propagate, use the rethrow keyword.

void misbehave() {
  try {
    dynamic foo = true;
    print(foo++); // Runtime error
  } catch (e) {
    print('misbehave() partially handled ${e.runtimeType}.');
    rethrow; // Allow callers to see the exception.
  }
}

void main() {
  try {
    misbehave();
  } catch (e) {
    print('main() finished handling ${e.runtimeType}.');
  }
}

operator
//son los operadores condicionales como < > + etc
void
/*
Indicates that a value is never used. Often used as a return type.
void main() {
  var hi = 'Hi 🇩🇰';
  print(hi);
  print('The end of the string: ${hi.substring(hi.length - 1)}');
  print('The last character: ${hi.characters.last}');
}
*/


for continue async await extends else if true false while finally catch try new function
//IDEM JAVASCRIPT, new INSTANCIA NUEVOS OBJETOS
part
/*
 Note: You may have heard of the part directive, which allows you to split a library into multiple 
 Dart files. We recommend that you avoid using part and create mini libraries instead.
 VER export KEYWORD PARA MAS INFORMACION

 */
covariant     
/*
Some (rarely used) coding patterns rely on tightening a type by overriding a parameter’s type with a 
subtype, which is invalid. In this case, you can use the covariant keyword to tell the analyzer that 
you are doing this intentionally. This removes the static error and instead checks for an invalid 
argument type at runtime.

The following shows how you might use covariant:

class Animal {
  void chase(Animal x) { ... }
}

class Mouse extends Animal { ... }

class Cat extends Animal {
  @override
  void chase(covariant Mouse x) { ... }
}
Although this example shows using covariant in the subtype, the covariant keyword can be placed in 
either the superclass or the subclass method. Usually the superclass method is the best place to put 
it. The covariant keyword applies to a single parameter and is also supported on setters and fields.
*/






get set
/*
Getters and setters
Getters and setters are special methods that provide read and write access to an object’s properties. Recall that each instance variable has an implicit getter, plus a setter if appropriate. You can create additional properties by implementing getters and setters, using the get and set keywords:

class Rectangle {
  double left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  // Define two calculated properties: right and bottom.
  double get right => left + width;
  set right(double value) => left = value - width;
  double get bottom => top + height;
  set bottom(double value) => top = value - height;
}

void main() {
  var rect = Rectangle(3, 4, 20, 15);
  assert(rect.left == 3);
  rect.right = 12;
  assert(rect.left == -8);
}
With getters and setters, you can start with instance variables, later wrapping them with methods, all without changing client code.
*/
return
/*
retorno de una funcion
All functions return a value. If no return value is specified, the statement return null; is implicitly appended to the function body.

foo() {}

assert(foo() == null);
To return multiple values in a function, aggregate the values in a record.

(String, int) foo() {
  return ('something', 42);
}
 */
 late
/*
The late modifier has two use cases:

Declaring a non-nullable variable that’s initialized after its declaration.
Lazily initializing a variable.
Often Dart’s control flow analysis can detect when a non-nullable variable is set to a non-null value before it’s used, but sometimes analysis fails. Two common cases are top-level variables and instance variables: Dart often can’t determine whether they’re set, so it doesn’t try.

If you’re sure that a variable is set before it’s used, but Dart disagrees, you can fix the error by marking the variable as late:

late String description;

void main() {
  description = 'Feijoada!';
  print(description);
}
*/

do
/*
do while
do {
  printLine();
} while (!atEndOfPage());
*/

dynamic
/*
When you want to explicitly say that any type is allowed, use the type Object? (if you’ve enabled 
null safety), Object, or—if you must defer type checking until runtime—the special type dynamic.
AVOID using dynamic unless you want to disable static checking
Some operations work with any possible object. For example, a log() method could take any object and call toString() on it. Two types in Dart permit all values: Object? and dynamic. However, they convey different things. If you simply want to state that you allow all objects, use Object?. If you want to allow all objects except null, then use Object.

The type dynamic not only accepts all objects, but it also permits all operations. Any member access on a value of type dynamic is allowed at compile time, but may fail and throw an exception at runtime. If you want exactly that risky but flexible dynamic dispatch, then dynamic is the right type to use.

Otherwise, prefer using Object? or Object. Rely on is checks and type promotion to ensure that the value’s runtime type supports the member you want to access before you access it.

/// Returns a Boolean representation for [arg], which must
/// be a String or bool.
bool convertToBool(Object arg) {
  if (arg is bool) return arg;
  if (arg is String) return arg.toLowerCase() == 'true';
  throw ArgumentError('Cannot convert $arg to a bool.');
}
The main exception to this rule is when working with existing APIs that use dynamic, especially 
inside a generic type. For example, JSON objects have type Map<String, dynamic> and your code will need to accept that same type. Even so, when using a value from one of these APIs, it’s often a good idea to cast it to a more precise type before accessing members.
*/
when
/*To set an optional guard clause after a case clause, use the keyword when. A guard clause can follow if case, and both switch statements and expressions.

switch (pair) {
  case (int a, int b) when a > b:
    print('First element greater');
  case (int a, int b):
    print('First element not greater');
} */
implements
/*
Suppose you want to create your own Car class, without inhering all the properties, variables and 
functions of the Vehicle class, but you want to inherit only the Vehicle type. To do this, the Car 
class must implement the Vehicle interface.


class Car implements Vehicle {
  Car(this.carColor);

  final String carColor;

  @override
  String get color => carColor;

  @override
  String get definition => '$carColor car';
}

main() {
  final car = Car('red');
  print('Result: definition: ${car.definition}');
  // Output -> Result: definition: red car
  print('Result: is Vehicle type: ${car is Vehicle}');
  // Output -> is Vehicle type: true
}
*/

