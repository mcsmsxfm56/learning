/*
+ suma
- resta
-expr se usa para invertir el signo de la expresion (como en matematica)
* multiply
/ division
~/ division pero define el output como integer
% modulo remainder
>
<
>=
<=
==
!=

is
is! is not
example

void main()
{
    String a = 'GFG';
    double b = 3.3;
 int num1 = 55;
int num2 = 78;
print(num1 & num2);
    // Using is to compare
    print(a is String);//true
 
    // Using is! to compare
    print(b is !int);//true
    print(55 | 78);//127
    print(~55);
}

//bitwise operators
//& convierte los numeros a binario y despues aplica un and

//128 64 32 16 8 4 2 1
//0   0  1  1  0 1 1 1 55 en binario
//0   1  0  0  1 1 1 0 78 en binario
//---------------------
//solo pondra como 1 los que tengan dos 1
//00000110=6
//11001000

/*
| OR
//128 64 32 16 8 4 2 1
//0   0  1  1  0 1 1 1 55 en binario
//0   1  0  0  1 1 1 0 78 en binario
01111111 = 127
 */

/*
^ XOR operator bitwise
00 0
01 1
10 1
11 0
//0   0  1  1  0 1 1 1 55 en binario
//0   1  0  0  1 1 1 0 78 en binario
01111001
64+32+16+8+1=121

~ not operand invierte todos los bits, y tambien invierte los numeros positivos en negativos
//0   0  1  1  0 1 1 1 55 en binario
//0   1  0  0  1 1 1 0 78 en binario
11001000
10110001
101111001
256+64+32+16+8+1=377

A = 0011 1100
B = 0000 1101
<<	shift left	A << 2	It returns 240 which is 1111 0000
>>	shift right	A >> 2	It returns 15 which is 0000 1111
 */


/*
=	Equal to	Use to assign values to the expression or variable
??=	Assignment operator	Assign the value only if it is null.
Example: Using Assignment Operators in the program 

void main()
{
    int a = 5;
    int b = 7;
 
    // Assigning value to variable c
    var c = a * b;
    print(c);
 
    // Assigning value to variable d
    var d;
    d ? ? = a + b; // Value is assign as it is null
    print(d);
    // Again trying to assign value to d
    d ? ? = a - b; // Value is not assign as it is not null
    print(d);
}

This class of operators contain those operators which are used to logically combine two or more conditions of the operands. It goes like this: 

Operator Symbol	Operator Name	Operator Description
&&	And Operator	Use to add two conditions and if both are true than it will return true.
||	Or Operator	Use to add two conditions and if even one of them is true than it will return true.
!	Not Operator	It is use to reverse the result.
Example: Using Logical Operators in the program 

void main()
{
    int a = 5;
    int b = 7;
 
    // Using And Operator
    bool c = a > 10 && b < 10;
    print(c);
 
    // Using Or Operator
    bool d = a > 10 || b < 10;
    print(d);
 
    // Using Not Operator
    bool e = !(a > 10);
    print(e);
}
Output: 

false
true
true
7. Conditional Operators:
This class of operators contain those operators which are used to perform comparison on the operands. It goes like this: 

Operator Symbol	Operator Name	Operator Description
condition ? expersion1 : expersion2	Conditional Operator	It is a simple version of if-else statement. If the condition is true than expersion1 is executed else expersion2 is executed.
expersion1 ?? expersion2	Conditional Operator	If expersion1 is non-null returns its value else returns expression2 value.
Example: Using Conditional Operators in the program 

void main()
{
    int a = 5;
    int b = 7;
 
    // Conditional Statement
    var c = (a < 10) ? "Statement is Correct, Geek" : "Statement is Wrong, Geek";
    print(c);
 
     
    // Conditional statement
      int? n;
      // Warning: Operand of null-aware operation '??' has type 'int' which excludes null.
      // For batter practice make both same type to avoid warning
      // var d = n ?? 10;
      var d = n ?? "n has Null value";
      print(d);
 
    // After assigning value to n
    n = 10;
      // we make it all ready null safe
    //d = n ? ? "n has Null value";
      d = n;
    print(d);
}
Output: 

Statement is Correct, Geek
n has Null value
10 
8. Cascade Notation Operators:
This class of operators allows you to perform a sequence of operation on the same element. It allows you to perform multiple methods on the same object. It goes like this: 

Operator Symbol	Operator Name	Operator Description
..	cascading Method	It is used to perform multiple methods on the same object.
Example: Using Cascade Notation Operators in the program 

class GFG {
    var a;
    var b;
 
    void set(x, y)
    {
        this.a = x;
        this.b = y;
    }
 
    void add()
    {
        var z = this.a + this.b;
        print(z);
    }
}
 
void main()
{
    // Creating objects of class GFG
    GFG geek1 = new GFG();
    GFG geek2 = new GFG();
 
    // Without using Cascade Notation
    geek1.set(1, 2);
    geek1.add();
 
    // Using Cascade Notation
    geek2..set(3, 4)
        ..add();
}
 */
*/