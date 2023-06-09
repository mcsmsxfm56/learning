/*
ppm es el npm de dart

The package is a set of dart program organized in an independent, reusable unit. It contains a set of functions and classes for a specific purpose or utility along with the compiled code and sample data. Dart comes with a rich set of default packages, loaded automatically when Dart console is started. Any other package other than the default needs to be installed and loaded explicitly first in order to use it. Once a packages Is loaded, it can be used throughout the Dart environment.

Dart Package Manager
Dart comes with an inbuilt Package Manager known as pub package manager. It is used to Install, organize, and manage third-party libraries, tools, and dependencies. Every Dart application has a pubspec.yaml file that keeps track of all the third-party libraries and application dependencies along with the metadata of applications like application name, author, version, and description, Most of the Dart IDEs offer in-built support for using a pub that includes creating, downloading, updating, and publishing packages. Otherwise, pub can be used on the command line. Below is a list of the important pub commands

pub get gets all package your app is dependent upo
pub upgrade upgrades all your app dependencies
pub build used to create a bit of your web app and will create a build folder
pub help all pub commands

Installing a Package
Step 1: Add the package name in the dependencies section of your project’s pubspec.yaml file. Then, the following command can be run from the application directory to get the package installed in the project.


pub get
This will download the packages under the packages folder in the application directory.

Example:  

An application needs to parse XML. Dart XML is a lightweight library that is open source and stable for parsing, traversing, querying, and building XML documents.

Dart

name: GFGapp
version: 0.0.1
description: A simple core application.
#dependencies:
#  foo_bar: '>=1.0.0 <2.0.0'
dependencies: https://mail.google.com/mail/u/0/images/cleardot.gif
xml:
To refer to the dart XML in the project. The syntax is as follows:

import 'package:xml/xml.dart' as xml;
Read XML String
XML string can read and verify the input, Dart XML uses a parse() method.

Syntax: xml.parse(String input):
Example: 

Parsing XML String Input. The following example shows how to parse XML string input.

Dart

// Dart program to illustrate
// parsing XML in Dart
import 'package:xml/xml.dart' as xml;
void main(){
   print("GFG-XML");
   var bookshelfXml = '''
Output:

GFG-XML
<?xml version = "1.0"?><bookshelf>  
  <book>  
     <title lang = "english">Growing a Language</title>  
     <price>29.99</price>  
  </book>  

  <book>  
     <title lang = "english">Learning XML</title>  
     <price>39.95</price>  
  </book>  
  <price>132.00</price>  
</bookshelf> 
 */