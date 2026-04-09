import 'package:club_verse/Club.dart';
import 'package:club_verse/Home.dart';
import 'package:club_verse/Login.dart';
import 'package:club_verse/contact.dart';
import 'package:club_verse/trying.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Routes {
  static MaterialPageRoute generateRoute(RouteSettings settings,) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            settings: settings,
            builder: (_) =>
                LayoutBuilder(builder: (context, constraints) {
                  if (constraints.maxWidth > 800) {
                    return home();
                  }
                  else {
                    return home();
                  }
                })
        );
      case '/club':
        return MaterialPageRoute(
            settings: settings,
            builder: (_) =>
                LayoutBuilder(builder: (context, constraints) {
                  if (constraints.maxWidth > 800) {
                    return club();
                  }
                  else {
                    return club();
                  }
                })
        );
      case '/contact':
        return MaterialPageRoute(
            settings: settings,
            builder: (_) =>
                LayoutBuilder(builder: (context, constraints) {
                  if (constraints.maxWidth > 800) {
                    return contact();
                  }
                  else {
                    return contact();
                  }
                })
        );
      case '/try':
        return MaterialPageRoute(
            settings: settings,
            builder: (_) =>
                LayoutBuilder(builder: (context, constraints) {
                  if (constraints.maxWidth > 800) {
                    return trying();
                  }
                  else {
                    return trying();
                  }
                })
        );
      case '/login':
        return MaterialPageRoute(
            settings: settings,
            builder: (_) =>
                LayoutBuilder(builder: (context, constraints) {
                  if (constraints.maxWidth > 800) {
                    return Login();
                  }
                  else {
                    return Login();
                  }
                })
        );
      default:
        return MaterialPageRoute(
            settings: settings,
            builder: (_) =>
                LayoutBuilder(builder: (context, constraints) {
                  if (constraints.maxWidth > 800) {
                    return home();
                  }
                  else {
                    return home();
                  }
                })
        );
    }
  }
}

