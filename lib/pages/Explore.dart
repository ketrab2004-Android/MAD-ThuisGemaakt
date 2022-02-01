part of pages;

class Explore extends StatelessWidget {
  const Explore({Key? key, required this.title, required this.style}) : super(key: key);
  final Styles.Base style;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Widgets.AppBase(
      this.style, this.title,
      selectedTab: 2,
      body: ListView(
        children: <Widget>[

        ],
      ),
    );
  }
}

