/*
Whenever we create a new widget in a flutter there is always a build Widget associated with it and the BuildContext parameter is passed by the framework.

Widget build ( BuildContext context )
Flutter takes care that there need not be any Widget apart from the build that needs the context parameter in their constructors or functions. So we have to pass the context parameter through the build Widget only otherwise there would be more than one call to the build function.

This is where the Builder class comes into the picture. The main function of the Builder class is to build the child and return it. The Builder class passes a context to the child, It acts as a custom build function.

Builder class constructor


Builder({Key key, @required WidgetBuilder builder})
The builder argument must not be null.

The different methods available of the class are –

build(BuildContext context) → Widget
createElement() → StatelessElement
debugDescribeChildren() → List<DiagnosticsNode>
debugFillProperties(DiagnosticPropertiesBuilder properties) → void
noSuchMethod(Invocation invocation) → dynamic
toString({DiagnosticLevel minLevel: DiagnosticLevel.info}) → String
We will be using the following example to understand the function of the Builder class. We have actually made a very simple app to demonstrate this. The main screen of the app has a simple Scaffold with an AppBar and the body with a simple button which is made with a GestureDetector. The aim of the button is to display a SnackBar when the person clicks on the button.

The main.dart file is as following

import 'package:flutter/material.dart';
  
void main() {
  runApp(MyApp());
}
  
class MyApp extends StatelessWidget {
    
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Builder Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Home(),
    );
  }
}
  
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
      // appbar
      appBar: AppBar(
        title: Text('GeeksforGeeks'),
      ),
        
      // detect gesture
      body: Center(
        child: GestureDetector(
          onTap: () {
            Scaffold.of(context).showSnackBar(
              new SnackBar(
                content: new Text('GeeksforGeeks'),
              ),
            );
          },
            
          // box styling
          child: Container(
            margin: EdgeInsets.all(18),
            height: 40,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                'CLICK ME',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
If we run the above program we get the following error –

======== Exception caught by gesture ===============================================================
Scaffold.of() called with a context that does not contain a Scaffold.
====================================================================================================
The error occurs because we are building the Scaffold at the same time we are calling the SnackBar widget (i.e the same context is being passed to the Scaffold and to the SnackBar). The context that is being passed does not belong to a Scaffold and for SnackBar to appear there needs to be a Scaffold. So the app gives the error.

To correct this error we can wrap the Gesture detector with a Builder widget as following. In this case, the context is being passed to the SnackBar widget through the Builder. The SnackBar becomes the child of the Scaffold context being passed.  Now if click on the button It gives the desired output as the Scaffold is already present for the SnackBar to appear.
 */

/* 
import 'package:flutter/material.dart';
  
void main() {
  runApp(MyApp());
}
  
class MyApp extends StatelessWidget {
    
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Builder Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Home(),
    );
  }
}
  
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
      // appbar
      appBar: AppBar(
        title: Text('GeeksforGeeks'),
      ),
        
      // detect gesture
      body: Center(
        child: Builder(builder: (BuildContext context) {
          return GestureDetector(
            onTap: () {
              Scaffold.of(context).showSnackBar(
                new SnackBar(
                  content: new Text('GeeksforGeeks'),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.all(18),
              height: 40,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  'CLICK ME',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
*/