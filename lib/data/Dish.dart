part of data;

class Dish {
  Dish({
    required this.imageUrl,
    required this.length,
    required this.dishName,
    this.favourited = false,
    this.checked = false,
  });

  final String imageUrl;
  final Duration length;
  final String dishName;
  bool favourited;
  bool checked;

  Widgets.ThisWeekDish generateWidget(Styles.Base style)
  {
    return new Widgets.ThisWeekDish(style,
      imageUrl: imageUrl,
      length: length,
      dishName: dishName,
      favourited: favourited,
      checked: checked,
    );
  }
}
