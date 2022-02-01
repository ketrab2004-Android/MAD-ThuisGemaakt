part of pages;

class Favourites extends StatefulWidget {
  Favourites({Key? key, required this.title, required this.style}) : super(key: key);
  final Styles.Base style;
  final String title;

  @override
  _FavouritesState createState() => _FavouritesState();

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

class _FavouritesState extends State<Favourites> {
  @override
  void initState() {
    super.initState();
    widget.dishes = widget.loadDishes();
  }

  @override
  Widget build(BuildContext context) {
    return Widgets.AppBase(
      this.widget.style, this.widget.title,
      selectedTab: 1,
      body: RefreshIndicator(
        onRefresh: () {
          setState((){
            widget.dishes = widget.loadDishes();
          });
          return widget.dishes;
        },
        child: ListView(
          padding: Constants.Sizes.pagePadding,
          children: <Widget>[
            Padding(
              padding: Constants.Sizes.weekTitlePadding,
              child: Widgets.H1(
                widget.style,
                Constants.Text.favouritesTitle,
                align: TextAlign.left,
              ),
            ),
            FutureBuilder <List<Data.Dish>>(
              future: widget.dishes,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  // return Widgets.H2(widget.style, snapshot.data.toString());

                  List<Data.Dish> data = snapshot.data!.where((i) => i.favourited).toList(); // filter favourited

                  return new GridView.builder(
                    primary: false,

                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: Constants.Sizes.weekVSpacing,
                      crossAxisSpacing: Constants.Sizes.weekHSpacing,
                    ),

                    itemCount: data.length,

                    itemBuilder: (context, index) {
                      return data[index].generateWidget(widget.style);
                    },

                    physics: NeverScrollableScrollPhysics(), // to disable GridView's scrolling
                    shrinkWrap: true, // You won't see infinite size error
                  );
                } else if (snapshot.hasError) {
                  throw Exception(snapshot.error);
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Widgets.H2(widget.style, "There was an error loading the dishes"),
                      Widgets.H2(widget.style, snapshot.error.toString(), mergeStyle: widget.style.errorText),
                    ],
                  );
                } else {
                  return Widgets.H2(widget.style, Constants.Text.loadingText,);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

