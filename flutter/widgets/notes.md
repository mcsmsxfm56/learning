# STATELESS WIDGET

A widget that does not require mutable state.

Stateless widget are useful when the part of the user interface you are describing does not depend on anything other than the configuration information in the object itself and the BuildContext in which the widget is inflated

## PERFORMANCE

The build method of a stateless widget is typically only called in three situations: the first time the widget is inserted in the tree, when the widget's parent changes its configuration (see Element.rebuild), and when an InheritedWidget it depends on changes.

If a widget's parent will regularly change the widget's configuration, or if it depends on inherited widgets that frequently change, then it is important to optimize the performance of the build method to maintain a fluid rendering performance.

There are several techniques one can use to minimize the impact of rebuilding a stateless widget:

Minimize the number of nodes transitively created by the build method and any widgets it creates. For example, instead of an elaborate arrangement of Rows, Columns, Paddings, and SizedBoxes to position a single child in a particularly fancy manner, consider using just an Align or a CustomSingleChildLayout. Instead of an intricate layering of multiple Containers and with Decorations to draw just the right graphical effect, consider a single CustomPaint widget.

Use const widgets where possible, and provide a const constructor for the widget so that users of the widget can also do so.

Consider refactoring the stateless widget into a stateful widget so that it can use some of the techniques described at StatefulWidget, such as caching common parts of subtrees and using GlobalKeys when changing the tree structure.

If the widget is likely to get rebuilt frequently due to the use of InheritedWidgets, consider refactoring the stateless widget into multiple widgets, with the parts of the tree that change being pushed to the leaves. For example instead of building a tree with four widgets, the inner-most widget depending on the Theme, consider factoring out the part of the build function that builds the inner-most widget into its own widget, so that only the inner-most widget needs to be rebuilt when the theme changes.

When trying to create a reusable piece of UI, prefer using a widget rather than a helper method. For example, if there was a function used to build a widget, a State.setState call would require Flutter to entirely rebuild the returned wrapping widget. If a Widget was used instead, Flutter would be able to efficiently re-render only those parts that really need to be updated. Even better, if the created widget is const, Flutter would short-circuit most of the rebuild work.
