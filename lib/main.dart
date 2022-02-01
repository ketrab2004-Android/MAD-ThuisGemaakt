import 'package:flutter/material.dart';
import 'package:thuis_gemaakt/pages/l.dart' as Pages;
import 'package:thuis_gemaakt/styles/l.dart' as Styles;
import 'package:thuis_gemaakt/constants/l.dart' as Constants;

void main() {
  Styles.Base style = Styles.Lightmode();

  runApp(MaterialApp(
    title: Constants.Text.appTitle,
    theme: ThemeData(
      primarySwatch: style.themeSwatch,
    ),

    initialRoute: '/',
    routes: <String, WidgetBuilder>{
      '/': (ctx) => Pages.HomePage(title: Constants.Text.appTitle, style: style),
      '/favourites': (ctx) => Pages.Favourites(title: Constants.Text.appTitle, style: style),
      '/explore': (ctx) => Pages.Explore(title: Constants.Text.appTitle, style: style),
      '/account': (ctx) => Pages.Account(title: Constants.Text.appTitle, style: style),
      '/fridge': (ctx) => Pages.Fridge(title: Constants.Text.appTitle, style: style),
    },
  ));
}
