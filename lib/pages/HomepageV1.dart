// ignore_for_file: deprecated_member_use

import 'package:workshop/widget/menu.dart';

import '../model/constructor.dart';
import '../widget/logo.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, }) : super(key: key);

  //final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var fromAbout;
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      drawer: Menu(),
      appBar: AppBar(
        title: const Logo(),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('CodingThai'),
              buttonWidget('เกี่ยวกับ'),
              Text('from about page is ${fromAbout ?? ''}')
            ]),
      ),
    );
  }

  Widget buttonWidget(String label) {
    return RaisedButton(
      onPressed: () async {
        fromAbout = await Navigator.pushNamed(context, 'homestack/about',
            arguments: Student(name: 'kittithat', age: 20));
      },
      child: Text(label),
    );
  }
}
