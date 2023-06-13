/*
type variable_name;

TIPADOS DE VARIABLE
1. Integer
2. Double (decimales)
3. String
4. Booleans
5. Lists (es un array, hace lo mismo que python y le dice listas a los array)
6. Maps (como los objetos de javascript)
7. Set (es un array que no puede tener elementos repetidos)
NOMBRE VARIABLES
LOS TIPADOS NO PUEDEN SER NOMBRES DE VARIABLES
String Integer = 3; INVALIDO

LAS VARIABLES PUEDEN TENER EN EL NOMBRE LETRAS Y NUMEROS
String valido8 = "valido"

LAS VARIABLES NO PUEDEN TENER ESPACIOS NI CARACTERES ESPECIALES
String nombre invalido = "hola" 
String nombre?¿invalid 0 = "nombre invalido

LA EXCEPCION A LA REGLA ES QUE PUEDEN TENER GUION BAJO Y SIGNO DOLAR _ $
String nombre$valido = "xD"
String nombre_valido = "hola"

LAS VARIABLES NO PUEDEN EMPEZAR CON UN NUMERO
String 3invalido = "invalido"


*/
/* 
void main()
{
    // Declaring and initialising a variable
    int gfg1 = 10;
 
    // Declaring another variable
    double gfg2 = 0.2; // must declare double a value or it
                       // will throw error
    bool gfg3 = false; // must declare boolean a value or it
                       // will throw error
 
    // Declaring multiple variable
    String gfg4 = "0", gfg5 = "Geeks for Geeks";
 
    // Printing values of all the variables
    print(gfg1); // Print 10
    print(gfg2); // Print default double value
    print(gfg3); // Print default string value
    print(gfg4); // Print default bool value
    print(gfg5); // Print Geeks for Geeks
}

dynamic variable_name;//asi se define una variable con tipado any


void main()
{
    // Assigning value to geek variable
    dynamic geek = "Geeks For Geeks";
    
 
    // Printing variable geek
    print(geek);
 
    // Reassigning the data to variable and printing it
    geek = 3.14157;//si geek lo definieran con var esto tiraria error, var usa tipado dinamico como python
    print(geek);
}

//const y final no pueden reasignarse
/*
Const:
If the value you have is computed at runtime (new DateTime.now(), for example), you can not use a const for it. However, if the value is known at compile time (const a = 1;), then you should use const over final. There are 2 other large differences between const and final. Firstly, if you're using const inside a class, you have to declare it as static const rather than just const. Secondly, if you have a const collection, everything inside of that is in const. If you have a final collection, everything inside of that is not final.

Final:
final should be used over const if you don't know the value at compile time, and it will be calculated/grabbed at runtime. If you want an HTTP response that can't be changed, if you want to get something from a database, or if you want to read from a local file, use final. Anything that isn't known at compile time should be final over const.
 */
*/