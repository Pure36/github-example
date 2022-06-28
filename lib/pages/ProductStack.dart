import 'package:flutter/material.dart';
import 'package:workshop/pages/DetailPage.dart';
import 'package:workshop/pages/ProductPage.dart';


class ProductStack extends StatefulWidget {
  const ProductStack({ Key? key }) : super(key: key);

  @override
  State<ProductStack> createState() => _ProductStackState();
}

class _ProductStackState extends State<ProductStack> {
  @override
  Widget build(BuildContext context) {
     return Navigator(initialRoute: 'productstack/product',
  onGenerateRoute: (RouteSettings settings) {
    WidgetBuilder builder;
    switch (settings.name) {
    
        case 'productstack/product':
        builder = (BuildContext _) => ProductPage();
        break;

        case 'productstack/detail':
        builder = (BuildContext _) => DetailPage();
        break;

      default:
        throw Exception('Invalid route: ${settings.name}');
        }
    return MaterialPageRoute (builder: builder, settings: settings);
    },
  );
}
}