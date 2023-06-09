/*
The Uri class supports functions to encode and decode strings for use in URIs (which you might know as URLs). These functions control characters that are unique for URIs, such as & and =. This class also parses and exposes the components of a URI—host, port, scheme, and so on.

Encoding and decoding fully qualified URIs
The encodeFull() and decodeFull() methods are used to encode and decode characters except those with special meaning in a URI (such as /, :, &, #).

Example: 

Dart

void main(){
    
var uri = 'https://example.org/api?foo=some message';
  
var encoded = Uri.encodeFull(uri);
assert(encoded ==
    'https://example.org/api?foo=some%20message');
  
var decoded = Uri.decodeFull(encoded);
print(uri == decoded);
}
Output:


true
Encoding and decoding URI components
To encode and decode all of a string’s characters that have special meaning in a URI, including (but not limited to) /, &, and :, use the encodeComponent() and decodeComponent() methods.

Example:

Dart
void main(){
    
var uri = 'https://example.org/api?foo=some message';
  
var encoded = Uri.encodeComponent(uri);
assert(encoded ==
    'https%3A%2F%2Fexample.org%2Fapi%3Ffoo%3Dsome%20message');
  
var decoded = Uri.decodeComponent(encoded);
print(uri == decoded);
}
Output:

true
Parsing URIs
If you have a URI object or a URI string, you can get its parts using URI fields such as path. To create a URI from a string, use the parse() static method.

Example:

Dart

void main(){
    
var uri =
    Uri.parse('https://example.org:8080/foo/bar#frag');
  
assert(uri.scheme == 'https');
assert(uri.host == 'example.org');
assert(uri.path == '/foo/bar');
assert(uri.fragment == 'frag');
print(uri.origin == 'https://example.org:8080');
}
Output:

true
Building URIs
You can  using the Uri() constructor is used to build up a URI from individual parts

Example:

Dart

void main(){
    
var uri = Uri(
    scheme: 'https',
    host: 'example.org',
    path: '/foo/bar',
    fragment: 'frag');
print(
    uri.toString() == 'https://example.org/foo/bar#frag');
}
Output:

true
 */