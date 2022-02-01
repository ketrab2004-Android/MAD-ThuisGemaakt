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
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Image.network(
                        "https://www.cultiviz.nl/wp-content/uploads/2019/01/pizza-vegetarisch-bbq.jpg",
                      ),
                      Widgets.H1(widget.style, "aaa"),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Image.network(
                        "https://www.cultiviz.nl/wp-content/uploads/2019/01/pizza-vegetarisch-bbq.jpg",
                      ),
                      Widgets.H1(widget.style, "aaa"),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Image.network(
                        "https://www.cultiviz.nl/wp-content/uploads/2019/01/pizza-vegetarisch-bbq.jpg",
                      ),
                      Widgets.H1(widget.style, "aaa"),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Image.network(
                        "https://www.cultiviz.nl/wp-content/uploads/2019/01/pizza-vegetarisch-bbq.jpg",
                      ),
                      Widgets.H1(widget.style, "aaa"),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
