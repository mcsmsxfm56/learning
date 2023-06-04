/*
type variable_name;

TIPADOS DE VARIABLE
1. Integer
2. Double
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