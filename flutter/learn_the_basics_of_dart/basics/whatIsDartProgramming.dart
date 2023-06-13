/* 
void main() { //se declara funcion  main
  for (int i = 0; i < 5; i++) { //bucle for, se declara la variable i con tipado integer
  //i sera igual a 0, 1, 2, 3, 4
    print('hello ${i + 1}');  //se imprime el resultado + 1, se puede meter codigo ejecutable en un string
    //al igual que javascript con ${}
    //hello 1
    //hello 2
    //hello 3
    //hello 4
    //hello 5
    //esto se corre en consola con dart dart2.dart
  }  
} 

//tipos de dart: 
//string
//num(es un numero, hay dos tipos de numero, int y double), integer es un numero sin decimal, double es un numero decimal
//boolean
//object
var myAge = 50;  //definiendo una variable en dart, si la creas usando la keyword var infiere su 
//tipado sin nececidad de que tengas que tiparlo a mano

//otro ejemplo de funcion en dart
num addNumbers(num a, num b) {  
    // Here, we use num as a type because it should work with int and double both.  
    return a + b;  
}  
var price1 = 29.99;  
var price2 = 20.81;  
var total = addNumbers(price1, price2);  
var num1 = 10;  
var num2 = 45;  
var total2 = addNumbers(num1, num2);  

//mas ejemplos de funciones, como veras la sintaxis y logica es identica a la de javascript
void main() {   
   var num = 12;   
   if (num % 2 = = 0) {   
      print("Number is Even.");   
   } else {   
      print("Number is Odd.");   
   }   
}  

void main() {   
   var name = ["Peter", "Rinky Ponting", "Abhishek"];   
     
   for (var prop in name) {   
      print(prop);   
   }   
}  

//los comentarios tambien son iguales a los de javascript, pero agregan un tercer tipo de comentario que
//son 3 slashes

///estos comentarios son comentarios de documentos pensados para miembros del equipo

void main() {   
  for(int i=1;i<=10;i++){    
    if(i==5){    
      print("Hello");  
      continue; //it will skip the rest statement, se hace uso de continue al igual que javascript        
    }    
    print(i);    
  }   
} 

void main() {   
  for(int i=1;i<=10;i++){    
    if(i==5){    
      print("Hello");  
      break;//it will terminate the rest statement        
      //se usa break al igual que javascript
    }    
    print(i);    
  }   
}  

/*la final keyword se usa para restringir al usuario, se puede usar en muchos contextos
como variables, clases y metodos, en variables es una keyword que sirve para definirles como var por ej
tamien esta const keyword que es una constante que no puede cambiarse al igual que javascript
*/
void main() {   
  final a = 100;  
  const pi = 3.14;  
  print(a);  
  print(pi);  
}  
/*en dart todo es un objeto por que es un OOP language
*/

class Mobile {  
  //las clases de dart son identicas a las de javascript
  // Property Declaration  
  String color, brandName, modelName; //se declaran 3 variables string 
    
  // Method Creation  
  String calling() {  
    return "Mobile can do call to everyone.";  
  }  
  String musicPlay() {  
    return "Mobile can play all types of Music.";  
  }  
  String clickPicture() {  
    return "Mobile can take pictures.";  
  }  
}  
  //la funcion main se ejecuta cuando la app dart se ejecuta
void main() {  
  // Object Creation  
  var myMob = new Mobile();   
    
  // Accessing Class's Property  
  myMob.color = "Black";   
  myMob.brandName = "Apple Inc.";  
  myMob.modelName = "iPhone 11 Pro";  
    
  //Display Output  
  print(myMob.color);  
  print(myMob.modelName);  
  print(myMob.brandName);  
  print(myMob.calling());  
  print(myMob.musicPlay());  
  print(myMob.clickPicture());  
}  
*/