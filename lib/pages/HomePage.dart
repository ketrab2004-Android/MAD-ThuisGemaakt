part of pages;

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title, required this.style}) : super(key: key);
  final Styles.Base style;
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
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
    );
  }
}
