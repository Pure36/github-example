import 'package:flutter/material.dart';
import 'package:workshop/pages/AboutPage.dart';
import 'package:workshop/pages/CompanyPage.dart';
import 'package:workshop/pages/ContactPage.dart';
import 'package:workshop/pages/Homepage.dart';


class HomeStack extends StatefulWidget {
  const HomeStack({ Key? key }) : super(key: key);

  @override
  State<HomeStack> createState() => _HomeStackState();
}

class _HomeStackState extends State<HomeStack> {
  @override
  Widget build(BuildContext context) {
     return Navigator(initialRoute: 'homestack/home',
  onGenerateRoute: (RouteSettings settings) {
    WidgetBuilder builder;
    switch (settings.name) {
      case 'homestack/home':
        builder = (BuildContext _) => HomePage();
        break;

        case 'homestack/about':
        builder = (BuildContext _) => AboutPage();
        break;

        case 'homestack/contact':
        builder = (BuildContext _) => ContactPage();
        break;

        case 'homestack/company':
        builder = (BuildContext _) => ConmpanyPage();
        break;

      default:
        throw Exception('Invalid route: ${settings.name}');
        }
    return MaterialPageRoute (builder: builder, settings: settings);
    },
  );
}
}