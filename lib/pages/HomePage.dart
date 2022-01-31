part of pages;

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Widgets.H1(Constants.Text.thisWeekTitle),
            Center(
              child: GridView.count(
                crossAxisCount: 2,

                mainAxisSpacing: Constants.Sizes.weekVSpacing,
                crossAxisSpacing: Constants.Sizes.weekHSpacing,

                children: <Widget>[

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
