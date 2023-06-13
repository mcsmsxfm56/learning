1. flutter roadmap
   1. learn the basics of dart
      1. https://www.geeksforgeeks.org/dart-tutorial/

# NOTAS

1. Los widgets serian como los componentes de react
2. pubsec.yaml define nombre y descripcion de la app, asi como tambien define si queres subir tu paquete a pub.dev, tambien se definen las dependencias que va a usar tu app
3. analysis_options define que tan estricto tiene que ser el codigo (similar al archivo tsconfig en typescript), revisarlo antes de salir en produccion
4. routeo se explica en tutorial1

# WIDGETS

1. Text
   1. The Text widget lets you create a run of styled text within your application.
2. Row, Column
   1. These flex widgets let you create flexible layouts in both the horizontal (Row) and vertical (Column) directions. The design of these objects is based on the web’s flexbox layout model.
3. Stack
   1. Instead of being linearly oriented (either horizontally or vertically), a Stack widget lets you place widgets on top of each other in paint order. You can then use the Positioned widget on children of a Stack to position them relative to the top, right, bottom, or left edge of the stack. Stacks are based on the web’s absolute positioning layout model.
4. Container
   1. The Container widget lets you create a rectangular visual element. A container can be decorated with a BoxDecoration, such as a background, a border, or a shadow. A Container can also have margins, padding, and constraints applied to its size. In addition, a Container can be transformed in three dimensional space using a matrix.
5. https://docs.flutter.dev/reference/widgets (TODOS LOS WIDGETS)
