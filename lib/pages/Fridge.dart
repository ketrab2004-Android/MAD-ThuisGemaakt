part of pages;

class Fridge extends StatelessWidget {
  const Fridge({Key? key, required this.title, required this.style}) : super(key: key);
  final Styles.Base style;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Widgets.AppBase(
      this.style, this.title,
      selectedTab: 4,
      body: ListView(
        children: <Widget>[

        ],
      ),
    );
  }
}

