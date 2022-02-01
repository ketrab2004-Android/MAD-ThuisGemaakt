part of styles;

abstract class Base {
  MaterialColor themeSwatch = Colors.red;
  Color? get theme { return this.themeSwatch[500]; }

  TextStyle h1 = new TextStyle(
    color: Colors.black,
    fontSize: 20.0,
  );

  Color navigationIconColor = Colors.black;
  Color navigationIconSelectedColor = Colors.black45;

  TextStyle navigationText = new TextStyle(
    color: Colors.black,
    fontSize: 12.0,
  );
  TextStyle navigationHighlightedText = new TextStyle(
    color: Colors.black45,
    fontSize: 12.0,
  );

  Color text = Colors.black;
  Color disabledText = Colors.black26;

  Color background = Colors.white;
}
