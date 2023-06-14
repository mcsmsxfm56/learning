import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'tutorial1 app',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  /*
  THIS IS THE APP STATE
  MyAppState defines the data the app needs to function. Right now, it only contains a single variable
  with the current random word pair. You will add to this later.

  The state class extends ChangeNotifier, which means that it can notify others about its own changes.
  For example, if the current word pair changes, some widgets in the app need to know.
  
  The state is created and provided to the whole app using a ChangeNotifierProvider (see code above in
  MyApp). This allows any widget in the app to get hold of the state.
  */
  var current = WordPair.random();
  //The new getNext() method reassigns current with a new random WordPair. It also calls
  //notifyListeners()(a method of ChangeNotifier)that ensures that anyone watching MyAppState is
  //notified.

  //All that remains is to call the getNext method from the button's callback.
  void getNext() {
    current = WordPair.random();
    notifyListeners();
  }

  var favorites =
      <WordPair>{}; //variable favorites que empieza como un set vacio
  //el tipado especifica que solo puede tener WordPair
  //se usa un set en vez de un array para asegurarnos que no haya favoritos repetidos

  void toggleFavorite() {
    /*
    You also added a new method, toggleFavorite(), which either removes the current word pair from the
    list of favorites (if it's already there), or adds it (if it isn't there yet). In either case, the
    code calls notifyListeners(); afterwards.
    */
    if (favorites.contains(current)) {
      favorites.remove(current);
    } else {
      favorites.add(current);
    }
    notifyListeners();
  }
}

//statefulwidget es un widget con estado
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

/*
The IDE creates a new class for you, _MyHomePageState. This class extends State, and can therefore 
manage its own values. (It can change itself.) Also notice that the build method from the old, 
stateless widget has moved to the _MyHomePageState (instead of staying in the widget). It was moved 
verbatim—nothing inside the build method changed. It now merely lives somewhere else.
*/
class _MyHomePageState extends State<MyHomePage> {
  var selectedIndex = 0;
/*
  First, notice that the entire contents of MyHomePage is extracted into a new widget, GeneratorPage. 
  The only part of the old MyHomePage widget that didn't get extracted is Scaffold.

  The new MyHomePage contains a Row with two children. The first widget is SafeArea, and the second is
  an Expanded widget.

  The SafeArea ensures that its child is not obscured by a hardware notch or a status bar. In this app,
  the widget wraps around NavigationRail to prevent the navigation buttons from being obscured by a 
  mobile status bar, for example
  */
  @override
  Widget build(BuildContext context) {
    Widget page; //The code declares a new variable, page, of the type Widget.
    //Then, a switch statement assigns a screen to page, according to the current value in selectedIndex.
    switch (selectedIndex) {
      case 0:
        page = const GeneratorPage();
        break;
      case 1:
        /*
        Since there's no FavoritesPage yet, use Placeholder; a handy widget that draws a crossed 
        rectangle wherever you place it, marking that part of the UI as unfinished.
        */
        page = const FavoritesPage();
        break;
      default:
        /* 
        Applying the fail-fast principle, the switch statement also makes sure to throw an error if 
        selectedIndex is neither 0 or 1. This helps prevent bugs down the line. If you ever add a new
        destination to the navigation rail and forget to update this code, the program crashes in 
        development (as opposed to letting you guess why things don't work, or letting you publish a 
        buggy code into production).
        */
        throw UnimplementedError('no widget for $selectedIndex');
    }
    /*
    LayoutBuilder's builder callback is called every time the constraints change. This happens when, for example:

    The user resizes the app's window
    
    The user rotates their phone from portrait mode to landscape mode, or back
    
    Some widget next to MyHomePage grows in size, making MyHomePage's constraints smaller
    
    And so on
    */
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        body: Row(
          children: [
            SafeArea(
              child: NavigationRail(
                extended: constraints.maxWidth >= 600,
                //You can change the extended: false line in NavigationRail to true. This shows the
                //labels next to the icons. In a future step, you will learn how to do this
                //automatically when the app has enough horizontal space.
                //si esta en true muestra texto al lado de los iconos de la sidebar
                //si activas true ocurre un overflow ya que la sidebar ocupa todo sin dejar espacio
                //para lo demas
                //extended: true,
                destinations: const [
                  NavigationRailDestination(
                    icon: Icon(Icons.home),
                    label: Text('Home'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.favorite),
                    label: Text('Favorites'),
                  ),
                ],
                /*
                  The navigation rail has two destinations (Home and Favorites), with their respective 
                  icons and labels. It also defines the current selectedIndex. A selected index of zero 
                  selects the first destination, a selected index of one selects the second destination, 
                  and so on. For now, it's hard coded to zero.
                  */
                selectedIndex: selectedIndex,
                onDestinationSelected: (value) {
                  /*
                    The navigation rail also defines what happens when the user selects one of the 
                    destinations with onDestinationSelected. Right now, the app merely outputs the 
                    requested index value with print()
                    */
                  setState(() {
                    selectedIndex = value;
                  });
                },
              ),
            ),
            /*
              The second child of the Row is the Expanded widget. Expanded widgets are extremely useful in
              rows and columns—they let you express layouts where some children take only as much space as 
              they need (NavigationRail, in this case) and other widgets should take as much of the 
              remaining room as possible (Expanded, in this case). One way to think about Expanded widgets 
              is that they are "greedy"
              */
            Expanded(
              /*
                Inside the Expanded widget, there's a colored Container, and inside the container, the 
                GeneratorPage.
                */
              child: Container(
                color: Theme.of(context).colorScheme.primaryContainer,
                child: page, // ← Here.
              ),
            ),
          ],
        ),
      );
    });
  }
}

class GeneratorPage extends StatelessWidget {
  const GeneratorPage({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var pair = appState.current;

    IconData icon;
    if (appState.favorites.contains(pair)) {
      icon = Icons.favorite;
    } else {
      icon = Icons.favorite_border;
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BigCard(pair: pair),
          const SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  appState.toggleFavorite();
                },
                icon: Icon(icon),
                label: const Text('Like'),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  appState.getNext();
                },
                child: const Text('Next'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/* 
OLD HOMEPAGE, COMENTADA POR MOTIVOS DE CONSULTA
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  //Every widget defines a build() method that's automatically called every time the widget's
  //circumstances change so that the widget is always up to date.
  Widget build(BuildContext context) {
    //MyHomePage tracks changes to the app's current state using the watch method.
    var appState = context.watch<MyAppState>();
    var pair = appState.current;
    IconData icon;
    if (appState.favorites.contains(pair)) {
      icon = Icons.favorite;
    } else {
      icon = Icons.favorite_border;
    }
    //Every build method must return a widget or (more typically) a nested tree of widgets. In this
    //case, the top-level widget is Scaffold. You aren't going to work with Scaffold in this codelab,
    //but it's a helpful widget and is found in the vast majority of real-world Flutter apps.
    return Scaffold(
      //Column is one of the most basic layout widgets in Flutter. It takes any number of children and
      //puts them in a column from top to bottom. By default, the column visually places its children
      //at the top. You'll soon change this so that the column is centered.
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //centrado vertical
          children: [
            const Text(
                'A random idea:'), //You changed this Text widget in the first step.
            //This second Text widget takes appState, and accesses the only member of that class, current
            //(which is a WordPair). WordPair provides several helpful getters, such as asPascalCase or
            //asSnakeCase. Here, we use asLowerCase but you can change this now if you prefer one of the
            //alternatives.
            BigCard(pair: pair),
            const SizedBox(
                height:
                    10), //Sirve para poner mas espacio entre bigcard y elevatedbutton
            Row(
              //row sirve para poner objetos horizontalmente, es el opuesto de Column
              mainAxisSize: MainAxisSize
                  .min, //con esto se indica que no ocupe todo el espacio horizontal
              children: [
                ElevatedButton(
                  onPressed: () {
                    appState.getNext();
                  },
                  child: const Text('Registrarse'),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    appState.toggleFavorite();
                  },
                  label: const Text('Like'),
                  icon: Icon(icon),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
*/
class BigCard extends StatelessWidget {
  const BigCard({
    super.key,
    required this.pair,
  });

  final WordPair pair;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    /*
    By using theme.textTheme, you access the app's font theme. This class includes members such as 
    bodyMedium (for standard text of medium size), caption (for captions of images), or headlineLarge 
    (for large headlines).

    The displayMedium property is a large style meant for display text. The word display is used in 
    the typographic sense here, such as in display typeface. The documentation for displayMedium says
    that "display styles are reserved for short, important text"—exactly our use case.

    The theme's displayMedium property could theoretically be null. Dart, the programming language in 
    which you're writing this app, is null-safe, so it won't let you call methods of objects that are 
    potentially null. In this case, though, you can use the ! operator ("bang operator") to assure 
    Dart you know what you're doing. (displayMedium is definitely not null in this case. The reason we
    know this is beyond the scope of this codelab, though.)

    Calling copyWith() on displayMedium returns a copy of the text style with the changes you define. 
    In this case, you're only changing the text's color.

    To get the new color, you once again access the app's theme. The color scheme's onPrimary property
    defines a color that is a good fit for use on the app's primary color.
    */
    final style = theme.textTheme.displayMedium!.copyWith(
      color: theme.colorScheme.onPrimary,
    );
    return Card(
      color: theme.colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(pair.asLowerCase, style: style),
      ),
    );
  }
}

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    if (appState.favorites.isEmpty) {
      return const Center(
        child: Text('No favorites yet.'),
      );
    }
    /*
    When you want a Column that scrolls, use the ListView widget.
    */
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text('You have '
              '${appState.favorites.length} favorites:'),
        ),
        for (var pair in appState.favorites)
          /*
          If you also want to try a new widget, ListTile has properties like title (generally for text),
          leading (for icons or avatars) and onTap (for interactions). However, you can achieve 
          similar effects with the widgets you already know.
          */
          ListTile(
            leading: const Icon(Icons.favorite),
            title: Text(pair.asLowerCase),
          ),
      ],
    );
  }
}
