part of pages;

class Favourites extends StatelessWidget {
  const Favourites({Key? key, required this.title, required this.style}) : super(key: key);
  final Styles.Base style;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Widgets.AppBase(
      this.style, this.title,
      selectedTab: 1,
      body: ListView(
        children: <Widget>[

        ],
      ),
    );
  }
}

