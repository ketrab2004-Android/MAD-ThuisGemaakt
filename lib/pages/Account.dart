part of pages;

class Account extends StatelessWidget {
  const Account({Key? key, required this.title, required this.style}) : super(key: key);
  final Styles.Base style;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Widgets.AppBase(
      this.style, this.title,
      selectedTab: 3,
      body: ListView(
        children: <Widget>[

        ],
      ),
    );
  }
}

