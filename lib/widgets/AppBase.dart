part of widgets;

class AppBase extends StatefulWidget {
  AppBase(this.style, this.title, {
    required this.body,
    this.selectedTab,
    this.changeTabFunction,
    this.key,
  });

  final String title;
  final Key? key;

  final int? selectedTab;

  final Styles.Base style;
  final Widget body;
  final void Function(int)? changeTabFunction;

  @override
  _AppBaseState createState() => _AppBaseState();
}

class _AppBaseState extends State<AppBase> {
  List< List > navigationItems = [
    [Constants.Text.thisWeekName, Icons.home],
    [Constants.Text.favouritesName, Icons.favorite],
    [Constants.Text.exploreName, Icons.search],
    [Constants.Text.accountName, Icons.person],
    [Constants.Text.fridgeName, Icons.kitchen],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: widget.body,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        showUnselectedLabels: true,

        unselectedLabelStyle: widget.style.navigationText,
        selectedLabelStyle: widget.style.navigationHighlightedText,

        selectedItemColor: widget.style.navigationIconSelectedColor,
        unselectedItemColor: widget.style.navigationIconColor,

        items: new List.generate(navigationItems.length, (index) {
          List item = navigationItems[index];
          return new BottomNavigationBarItem(
            icon: Icon(
              item[1],
              color: widget.style.navigationIconColor,
            ),
            label: item[0],
          );
        }),

        currentIndex: widget.selectedTab ?? 0,
        onTap: widget.changeTabFunction ?? (int index){
          void Function(String) push = (String route) {
            Navigator.pushReplacementNamed(
              context,
              route,
              // PageRoute(
              //   pageBuilder: (context, animation1, animation2) =>
              // ),
            );
          };
          switch (index) {
            case 1:
              return push("/favourites");
            case 2:
              return push("/explore");
            case 3:
              return push("/account");
            case 4:
              return push("/fridge");
            case 0:
            default:
              return push('/');
          }
        },
      ),
    );
  }
}
