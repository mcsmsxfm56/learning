/*
1.	variable_name.elementAt(index);	It returns the element at the corresponding index. The type of output depends on the type of set defined.
2.	variable_name.length;	It returns the length of the set. The output is of integer type.
3.	variable_name.contains(element_name);	It returns boolean value true if the element_name is present in the set else return false.
4.	variable_name.remove(element_name);	It deletes the element whose name is present inside it.
5.	variable_name.forEach(…);	It runs the command defined inside forEach() function for all the elements inside the set.
6.	variable_name.clear();	It deletes all the element inside the set.

List<type> list_variable_name = set_variable_name.toList();
convierte sets en listas



// Converting Set to List in Dart
void main()
{
  // Declaring set with value
  var gfg = <String>{'Hello Geek',"GeeksForGeeks","Geek1","Geek2","Geek3"}; 
   
  // Printing values in set
  print("Values in set are:");
  print(gfg);
   
  print("");
   
  // Converting Set to List
  List<String> gfg_list = gfg.toList();
   
  // Printing values of list
  print("Values in the list are:");
  print(gfg_list);

//Converting Set to Map in Dart: Dart also provides us with the method to convert the set into the 
//map.
// Declaring set 1 with value
  var gfg = <String>{"GeeksForGeeks","Geek1","Geek2","Geek3"};
   
  var geeksforgeeks = gfg.map((value) {
    return 'mapped $value';
  });
  print("Values in the map:");
  print(geeksforgeeks);

  // Declaring set 1 with value
  var gfg1 = <String>{"GeeksForGeeks","Geek1","Geek2","Geek3"};
   
  // Printing values in set
  print("Values in set 1 are:");
  print(gfg1);
   
  print("");
   
  // Declaring set 2 with value
  var gfg2 = <String>{"GeeksForGeeks","Geek3","Geek4","Geek5"};
   
  // Printing values in set
  print("Values in set 2 are:");
  print(gfg2);
   
  print("");
   
   
  // Finding Union
  print("Union of two sets is ${gfg1.union(gfg2)} \n");
   
  // Finding Intersection
  print("Intersection of two sets is ${gfg1.intersection(gfg2)} \n");
   
  // Finding Difference
  print("Difference of two sets is ${gfg2.difference(gfg1)} \n"); 
}
*/