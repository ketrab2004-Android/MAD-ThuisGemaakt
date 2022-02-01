part of widgets;

class ThisWeekDish extends StatelessWidget {
  ThisWeekDish(this.style, {
    required this.imageUrl,
    required this.length,
    required this.dishName,
    this.favourited,
    this.checked,
    this.openDish,
    this.onHeart,
    this.onUnheart,
  });

  final Styles.Base style;

  final String imageUrl;
  final Duration length;
  final String dishName;
  final bool? favourited;
  final bool? checked;

  final void Function()? openDish;
  final void Function()? onHeart;
  final void Function()? onUnheart;

  static String durationToString(Duration dur) {
    String toReturn = '';

    if (dur.compareTo(Duration(hours: 1)) >= 0) {
      toReturn += "${dur.inHours} ${Constants.Text.timeHours}";
    }

    if (dur.compareTo(Duration(minutes: 1)) >= 0) {
      if (toReturn.length > 0) {
        toReturn += ' ';
      }
      int min = dur.inMinutes.remainder(60);
      if (min != 0) {
        toReturn += "${min} ${Constants.Text.timeMinutes}";
      }
    }

    return toReturn;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 0, top: 0, bottom: 0, right: 0,
                  child: GestureDetector(
                    child: Image.network(
                      this.imageUrl,
                      fit: BoxFit.cover,
                    ),
                    onTap: openDish ?? (){},
                    onDoubleTap: onHeart ?? (){},
                  ),
                ),
                Positioned(
                  left: 0, top: 0, bottom: 0, right: 0,
                  child: Visibility(
                    visible: checked ?? false,
                    child: Icon(
                      Icons.circle,
                      color: style.checkIconBorderColor,
                      size: Constants.Sizes.checkIconBorderSize,
                    ),
                  ),
                ),
                Positioned(
                  left: 0, top: 0, bottom: 0, right: 0,
                  child: Visibility(
                    visible: checked ?? false,
                    child: Icon(
                      Icons.check_circle_sharp,
                      color: style.checkIconColor,
                      size: Constants.Sizes.checkIconSize,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                flex: 10,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    H2(style, this.dishName,
                      align: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                    ),
                    H5(style, ThisWeekDish.durationToString(this.length),
                      align: TextAlign.left,
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 2,
                child: GestureDetector(
                  child: Icon(
                    favourited ?? false ? Icons.favorite : Icons.favorite_border,
                  ),
                  onTap: onUnheart ?? (){},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
