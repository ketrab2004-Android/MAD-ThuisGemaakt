part of pages;

class Home extends StatefulWidget {
  Home({Key? key, required this.title, required this.style}) : super(key: key);
  final String title;
  final Styles.Base style;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Widgets.AppBase(
      widget.style, widget.title,
      selectedTab: 0,
      body: RefreshIndicator(
        onRefresh: () {
          return Future.delayed(
            Duration(milliseconds: 500),
          );
        },
        child: ListView(
          padding: Constants.Sizes.pagePadding,
          children: <Widget>[
            Padding(
              padding: Constants.Sizes.weekTitlePadding,
              child: Widgets.H1(
                widget.style,
                Constants.Text.thisWeekTitle,
                align: TextAlign.left,
              ),
            ),
            GridView.count(
              primary: false,
              crossAxisCount: 2,

              physics: NeverScrollableScrollPhysics(), // to disable GridView's scrolling
              shrinkWrap: true, // You won't see infinite size error

              mainAxisSpacing: Constants.Sizes.weekVSpacing,
              crossAxisSpacing: Constants.Sizes.weekHSpacing,

              children: <Widget>[
                Widgets.ThisWeekDish(
                  widget.style,
                  imageUrl: "https://www.cultiviz.nl/wp-content/uploads/2019/01/pizza-vegetarisch-bbq.jpg",
                  dishName: "Pizza Deluzo",
                  length: Duration(minutes: 15),
                  favourited: true,
                ),
                Widgets.ThisWeekDish(
                  widget.style,
                  imageUrl: "https://www.allesoveritaliaanseten.nl/wp-content/uploads/2015/03/Vegetarische-pasta.jpg",
                  dishName: "Spaghetti",
                  length: Duration(hours: 1, minutes: 30),
                ),
                Widgets.ThisWeekDish(
                  widget.style,
                  imageUrl: "https://assets.epicurious.com/photos/5e4c65cfd57b3b000872c652/4:3/w_3604,h_2703,c_limit/VeggieBurger_RECIPE_IG_021320_516_VOG_final.jpg",
                  dishName: "Gezonde Burger",
                  length: Duration(minutes: 30),
                ),
                Widgets.ThisWeekDish(
                  widget.style,
                  imageUrl: "https://www.puursuzanne.nl/wp-content/uploads/2016/09/DSC_2136-1024x640.jpg",
                  dishName: "Salade",
                  length: Duration(minutes: 5),
                ),
                Widgets.ThisWeekDish(
                  widget.style,
                  imageUrl: "https://www.culy.nl/wp-content/uploads/2013/03/Culy-Homemade-vega-spring-rolls-met-mango-en-edamame.jpg3_.jpg",
                  dishName: "Culy?",
                  length: Duration(minutes: 69),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
