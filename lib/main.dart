import 'package:flutter/material.dart';
import 'package:thuis_gemaakt/pages/l.dart' as Pages;
import 'package:thuis_gemaakt/styles/l.dart' as Styles;
import 'package:thuis_gemaakt/constants/l.dart' as Constants;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Styles.Base theme = Styles.Lightmode();

  List< List > navigationItems = [
    [Constants.Text.thisWeekName, Icons.home],
    [Constants.Text.favouritesName, Icons.favorite],
    [Constants.Text.exploreName, Icons.search],
    [Constants.Text.accountName, Icons.person],
    [Constants.Text.fridgeName, Icons.kitchen],
  ];

  // if (true) {
  //   navigationItems.add(
  //     [Constants.Text.fridgeName, Icons.fridge]
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.Text.appTitle,
      theme: ThemeData(
        primarySwatch: theme.themeSwatch,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Pages.HomePage(
            style: theme,
            title: Constants.Text.appTitle,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: new List.generate(navigationItems.length, (index) {
            List item = navigationItems[index];
            return new BottomNavigationBarItem(
              icon: Icon(
                item[1],
                color: theme.navigationIconColor,
              ),
              label: item[0],
            );
          }),
          showUnselectedLabels: true,
          selectedItemColor: theme.navigationIconSelectedColor,
        ),
      ),
    );
  }
}
