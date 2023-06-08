//se importa el modulo de matematicas como Random, es como el import as de javascript solo que este 
//es import show
import 'dart:math' show Random;

//funcion asincrona
void main() async {
  /*print imprime en pantalla al igual que python, el metodo de montecarlo es un metodo para aproximar expresiones matematicas
  complejas y costosas de evaluar*/
  print('Compute π using the Monte Carlo method.');
  /*la final keyword se usa para restringir al usuario, se puede usar en muchos contextos
como variables, clases y metodos, en variables es una keyword que sirve para definirles como var por ej*/
  await for (final estimate in computePi().take(100)) {//toma los primeros 100 items de la lista
    print('π ≅ $estimate');
  }
}

/// Generates a stream of increasingly accurate estimates of π.
//Stream es una de las clases que da soporte para programacion asincronica
Stream<double> computePi({int batch = 100000}) async* {
  var total = 0; // Inferred to be of type int
  var count = 0;
  while (true) {
    final points = generateRandom().take(batch);//la funcion take toma n cantidad de numeros de una lista
    //esta funcion take toma los primeros 100.000 numeros de generateRandom
    final inside = points.where((p) => p.isInsideUnitCircle);
    //crea un iterable(lista o array) que cumpla la condicion
    //este metodo unit circle eleva al cuadrado a x y a y y despues suma los resultados
    total += batch;//total igual a 100.000
    count += inside.length;//1 por que es el resultado de x * x + y * y
    final ratio = count / total; // (x * x + y * y) / 100.000

    // Area of a circle is A = π⋅r², therefore π = A/r².
    // So, when given random points with x ∈ <0,1>,
    // y ∈ <0,1>, the ratio of those inside a unit circle
    // should approach π / 4. Therefore, the value of π
    // should be:
    yield ratio * 4;
  }
}

Iterable<Point> generateRandom([int? seed]) sync* {
  final random = Random(seed);
  while (true) {
    yield Point(random.nextDouble(), random.nextDouble());
    /*
    Generates a non-negative random floating point value uniformly distributed in the range from 0.0,
    inclusive, to 1.0, exclusive
    retorna un objeto Point {x: 0 < random < 1, y: 0 < random < 1}
    */
  }
}

class Point {
  final double x;
  final double y;

  const Point(this.x, this.y);

  bool get isInsideUnitCircle => x * x + y * y <= 1;
}