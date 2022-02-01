part of pages;

class Account extends StatefulWidget {
  Account({Key? key, required this.title, required this.style}) : super(key: key);
  final Styles.Base style;
  final String title;

  @override
  _AccountState createState() => _AccountState();

  String _theme = "Lightmode";
  bool _filterVegetarian = true;
  bool _filterDairy = false;
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Widgets.AppBase(
      this.widget.style, this.widget.title,
      selectedTab: 3,
      body: ListView(
        padding: Constants.Sizes.pagePadding,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Icon(Icons.person, size: Constants.Sizes.accountIconSize),
              Widgets.H1(widget.style, Constants.Text.defaultUsername),
            ],
          ),
          Padding(
            padding: Constants.Sizes.accountSettingsItemPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Widgets.H2(widget.style, Constants.Text.accountTheme),
                DropdownButton(
                  value: widget._theme,
                  onChanged: (String? newValue) {
                    setState(() {
                      widget._theme = newValue!;
                    });
                  },
                  items: <String>["Lightmode", "Darkmode", "Hoge contrast"]
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                )
              ],
            ),
          ),
          Padding(
            padding: Constants.Sizes.accountSettingsItemPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    Checkbox(
                      value: widget._filterVegetarian,
                      onChanged: (bool? value) {
                        setState(() {
                          widget._filterVegetarian = value!;
                        });
                      },
                    ),
                    Widgets.H2(widget.style, Constants.Text.accountVegetarianToggle),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: widget._filterDairy,
                      onChanged: (bool? value) {
                        setState(() {
                          widget._filterDairy = value!;
                        });
                      },
                    ),
                    Widgets.H2(widget.style, Constants.Text.accountDairyToggle),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

