part of widgets;

class ExploreDish extends ThisWeekDish {
  ExploreDish(this.style, {
    required this.imageUrl,
    required this.length,
    required this.dishName,
    this.favourited,
    this.checked,
    this.openDish,
    this.onHeart,
    this.onUnheart,
  }) : super(
    style,
    imageUrl: imageUrl,
    length: length,
    dishName: dishName,
    favourited: favourited,
    checked: checked,
    openDish: openDish,
    onHeart: onHeart,
    onUnheart: onUnheart,
  );

  final Styles.Base style;

  final String imageUrl;
  final Duration length;
  final String dishName;
  final bool? favourited;
  final bool? checked;

  final void Function()? openDish;
  final void Function()? onHeart;
  final void Function()? onUnheart;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Constants.Sizes.exploreCardBorderRadius),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(Constants.Sizes.exploreCardBorderRadius),
        child: Column(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 2/1,
              child: GestureDetector(
                child: Image.network(
                  this.imageUrl,
                  fit: BoxFit.cover,
                ),
                onTap: openDish ?? (){},
              ),
            ),
            Padding(
              padding: Constants.Sizes.exploreInfoPadding,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        H1(style, this.dishName),
                        H5(style, ThisWeekDish.durationToString(this.length)),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(Icons.thumb_up_outlined),
                            Padding(
                              padding: Constants.Sizes.exploreStatsPadding,
                              child: H2(style, "2.5k"),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.favorite_outline),
                            Padding(
                              padding: Constants.Sizes.exploreStatsPadding,
                              child: H2(style, "2k"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
