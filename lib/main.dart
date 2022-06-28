import 'package:flutter/material.dart';
import 'package:workshop/pages/HomeStack.dart';
import 'package:workshop/pages/ProductStack.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          canvasColor: Colors.green[50],
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)
              .copyWith(secondary: Colors.red)),
      //home: const HomePage(title: '')
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => HomeStack(),
        '/productstack':(context) => ProductStack()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
