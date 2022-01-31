part of styles;

abstract class Base {
  MaterialColor themeSwatch = Colors.red;
  Color? get theme { return this.themeSwatch[500]; }

  Color navigationIconColor = Colors.black;
  Color navigationIconSelectedColor = Colors.black12;

  Color text = Colors.black;
  Color disabledText = Colors.black12;

  Color background = Colors.white;
}
