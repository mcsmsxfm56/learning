/*
Types of List
There are broadly two types of lists on the basis of their length:  

Fixed Length List
Growable List

Fixed Length List
Here, the size of the list is declared initially and can’t be changed during runtime.

Syntax:  

List ? list_Name = List.filled(number of elements, E, growanle:boolean);
Example:
*/
void main()
{
    List? gfg = List.filled(5, null, growable: false);
    gfg[0] = 'Geeks';
    gfg[1] = 'For';
    gfg[2] = 'Geeks';
 
    // Printing all the values in List
    print(gfg);//[Geeks, For, Geeks, null, null]
 
    // Printing value at specific position
    print(gfg[2]);//Geeks

    var gfg = [ 'Geeks', 'For' ];//Growable List
    /*
This type of list is declared without declaring the size of the list. Its length can be changed during runtime.
Adding a value to the growable list: 
ESTOS DOS TIPOS DE LISTA SON LISTAS DE UNA DIMENSION
*/
    // Printing all the values in List
    print(gfg);
 
    // Adding new value in List and printing it
    gfg.add('Geeks'); // list_name.add(value);
    print(gfg);

    //2D LIST son listas con listas adentro
    int a = 3;
    int b = 3;
 
    // Creating two dimensional list
    var gfg = List.generate(a, (i) = > List(b), growable: false);
 
    // Printing its value
    print(gfg)
    //[[null, null, null], [null, null, null], [null, null, null]]
 
    // Inserting values
    for (int i = 0; i < 3; ++i) {
        for (int j = 0; j < 3; ++j) {
            gfg[i][j] = i + j;
        }
    }
    // Printing its value
    print(gfg);
    //[[0, 1, 2], [1, 2, 3], [2, 3, 4]]

    //3D LIST, [[[]]]
     var gfg = List.generate(3, (i) = > List.generate(3,
                               (j) = > List.generate(3,
                               (k) = > i + j + k)));
 
    // Printing its value
    print(gfg);
    //[[[0, 1, 2], [1, 2, 3], [2, 3, 4]], [[1, 2, 3], [2, 3, 4], [3, 4, 5]], [[2, 3, 4], [3, 4, 5], [4, 5, 6]]]
}

