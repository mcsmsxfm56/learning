/*
1. isEmpty() or isNotEmpty:
Use isEmpty or isNotEmpty to check whether a list, set, or map has items:

Example:


void main(){
    
var coffees = [];
var teas = ['green', 'black', 'chamomile', 'earl grey'];
print(coffees.isEmpty);
print(teas.isNotEmpty);
}
Output:

true
true
2. forEach():
To apply a function to each item in a list, set, or map, you can use forEach():

Example:


void main(){
    
    
var teas = ['green', 'black', 'chamomile', 'earl grey'];
  
var loudTeas = teas.map((tea) => tea.toUpperCase());
loudTeas.forEach(print);
}
Output:

GREEN
BLACK
CHAMOMILE
EARL GREY
3.where():
Use Iterable’s where() method to get all the items that match a condition. Use Iterable’s any() and every() methods to check whether some or all items match a condition.

Example:

void main(){
    
var teas = ['green', 'black', 'chamomile', 'earl grey'];
  
// Chamomile is not caffeinated.
bool isDecaffeinated(String teaName) =>
    teaName == 'chamomile';
  
// Use where() to find only the items that return true
// from the provided function.
  
  
// Use any() to check whether at least one item in the
// collection satisfies a condition.
print(teas.any(isDecaffeinated));
  
// Use every() to check whether all the items in a
// collection satisfy a condition.
print(!teas.every(isDecaffeinated));
}
Output:

true
true
*/