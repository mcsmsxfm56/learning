/*
We all know that dart is a type of javascript. So we can manipulate data inside HTML pages with the help of dart in a similar fashion as we can do with javascript.

In HTML DOM (Document Object Model) every webpage is on a window, so it is considered as an object. The hierarchical model that follows is as follows:



Dart provides the user to manipulate these elements in an HTML page with the help of dart:html library. To use a dart program inside HTML you have to import this library in your code.

Syntax:

import 'dart:html';
To access the elements inside the page we make use of query selector function to manipulate the element.
Syntax:

Element querySelector(String selectors);
The String selector can be either class name (.class_name), id (#id), html element (h1, p, …), attribute type (input[type=”button”], …) or either asterisk (*).

Example 1: Creating a simple dart-Html page.

HTML

We will be linking dart and css files with our HTML page. Apart from that we also have to link dart javascript so that it may convert dart file to browser understandable javascript.
<!DOCTYPE html>  
<html>
   <head>
      <title>Geeks for Geeks</title>    
      <link rel = "stylesheet" href = "styles.css">
      <script defer src = "main.dart" type = "application/dart"></script>
      <script defer src = "packages/browser/dart.js"></script>
   </head>
    
   <body>  
     <h1 id="header"></h1>
  </body>
</html>
Dart

This is main.dart
// Importing dart HTML library
import 'dart:html';
 
void main()
{
    // Calling the element with id header and setting its value dynamically
    var header = querySelector('#header');
    header.text = "Geeks For Geeks!";
}
CSS

This is styles.css
// Setting CSS style
body {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  position: absolute;
  width: 100%;
  height: 100%;
  background-color: whitesmoke;
}
 
h1 {
  color: ForestGreen;
  font-family: Arial, Helvetica, sans-serif;
}
 */