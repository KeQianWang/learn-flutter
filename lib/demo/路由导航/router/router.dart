import 'package:flutter/material.dart';

import '../main.dart';
import '../about.dart';
import '../detail.dart';
import '../unknown.dart';

class HYRouter {
  static final Map<String, WidgetBuilder> routes = {
    HYAboutPage.routeName: (ctx) => HYAboutPage(),
  };

  static const String initialRoute = HomwPage.routeName;

  static  RouteFactory generateRoute = (settings) {
    if (settings.name == HYDetailPage.routeName) {
      return MaterialPageRoute(
          builder: (ctx) {
            return HYDetailPage(settings.arguments as String);
          }
      );
    }
    return null;
  };

  static  RouteFactory unknownRoute = (settings) {
    return MaterialPageRoute(
        builder: (ctx) {
          return HYUnknownPage();
        }
    );
  };
}