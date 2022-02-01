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
        padding: Constants.Sizes.pagePadding,
        children: <Widget>[
          Widgets.H1(style, Constants.Text.fridgeTitle),
          Table(
            border: style.fridgeTableBorder,
            columnWidths: {
              0: FlexColumnWidth(5),
              1: FlexColumnWidth(5),
              2: FlexColumnWidth(2),
            },
            children: <TableRow>[
              TableRow(
                children: <Widget>[
                  Widgets.H1(style, Constants.Text.fridgeIngredient),
                  Widgets.H1(style, Constants.Text.fridgeAmount),
                  Widgets.H1(style, ''),
                ],
              ),
              TableRow(

                children: <Widget>[
                  Widgets.H2(style, "Kaas"),
                  Widgets.H2(style, "2 plakjes"),
                  Padding(
                    padding: Constants.Sizes.fridgeItemPadding,
                    child: Icon(Icons.edit),
                  ),
                ],
              ),
              TableRow(
                children: <Widget>[
                  Widgets.H2(style, "Melk"),
                  Widgets.H2(style, "2 liter"),
                  Padding(
                    padding: Constants.Sizes.fridgeItemPadding,
                    child: Icon(Icons.edit),
                  ),
                ],
              ),
              TableRow(
                children: <Widget>[
                  Widgets.H2(style, "Bloem"),
                  Widgets.H2(style, "200 gram"),
                  Padding(
                    padding: Constants.Sizes.fridgeItemPadding,
                    child: Icon(Icons.edit),
                  ),
                ],
              ),
              TableRow(
                children: <Widget>[
                  Widgets.H2(style, "Pizzadeeg"),
                  Widgets.H2(style, "230 gram"),
                  Padding(
                    padding: Constants.Sizes.fridgeItemPadding,
                    child: Icon(Icons.edit),
                  ),
                ],
              ),
              TableRow(
                children: <Widget>[
                  Widgets.H2(style, "Olijf-olie"),
                  Widgets.H2(style, "200 milliliter"),
                  Padding(
                    padding: Constants.Sizes.fridgeItemPadding,
                    child: Icon(Icons.edit),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

