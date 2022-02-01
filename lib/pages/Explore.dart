part of pages;

class Explore extends StatefulWidget {
  Explore({Key? key, required this.title, required this.style}) : super(key: key);
  final Styles.Base style;
  final String title;

  @override
  _ExploreState createState() => _ExploreState();

  late Future< List<Data.Dish> > dishes;
  // https://docs.flutter.dev/cookbook/networking/fetch-data
  Future< List<Data.Dish> > loadDishes() async {
    final response = await http.get( Uri.parse("https://pastebin.com/raw/100zC2vc") );

    List<Data.Dish> _dishes = List.empty(growable: true);

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.

      List<dynamic> raw = jsonDecode(response.body);

      for (int i = 0; i < raw.length; i++) {
        _dishes.add(
          Data.Dish.fromJson(raw[i]),
        );
      }

      return _dishes;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception("Failed to load dishes");
    }
  }
}

class _ExploreState extends State<Explore> {
  @override
  void initState() {
    super.initState();
    widget.dishes = widget.loadDishes();
  }

  @override
  Widget build(BuildContext context) {
    return Widgets.AppBase(
      this.widget.style, this.widget.title,
      selectedTab: 2,
      body: RefreshIndicator(
        onRefresh: () {
          setState((){
            widget.dishes = widget.loadDishes();
          });
          return widget.dishes;
        },
        child: ListView(
          padding: Constants.Sizes.pagePadding,
          shrinkWrap: true,
          children: <Widget>[
            Padding(
              padding: Constants.Sizes.weekTitlePadding,
              child: Widgets.H1(
                widget.style,
                Constants.Text.exploreTitle,
                align: TextAlign.left,
              ),
            ),
            Widgets.ExploreDish(
              widget.style,
              imageUrl: "https://interactive-examples.mdn.mozilla.net/media/cc0-images/grapefruit-slice-332-332.jpg",
              length: Duration(minutes: 5),
              dishName: "Orange",
            ),
          ],
        ),
      ),
    );
  }
}

