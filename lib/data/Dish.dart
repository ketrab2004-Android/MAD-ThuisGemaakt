part of data;

class Dish {
  Dish({
    required this.imageUrl,
    required this.length,
    required this.dishName,
    required this.favourites,
    required this.likes,
    this.favourited = false,
    this.checked = false,
  });

  final String imageUrl;
  final Duration length;
  final String dishName;

  final int likes;
  final int favourites;

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

  factory Dish.fromJson(Map<String, dynamic> json) {
    return new Dish(
      imageUrl: json["imageUrl"],
      length: Duration(seconds: json["length"]),
      dishName: json["dishName"],
      favourited: json["favourited"] ?? false,
      checked: json["checked"] ?? false,
      favourites: json["favourites"],
      likes: json["likes"],
    );
  }
}
