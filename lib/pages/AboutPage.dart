import 'package:flutter/material.dart';

import '../model/constructor.dart';

class AboutPage extends StatefulWidget {
  AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    final student = ModalRoute.of(context)!.settings.arguments as Student;
    return Scaffold(
      appBar: AppBar(title: const Text('เกี่ยวกับ')),
      body: Center(
        child: Column(
          children: [
            Text('${student.name}'),
            Text('${student.age}'),
            Divider(),
            RaisedButton(
              child: Text('กลับHome'),
              onPressed: () {
                Navigator.pop(context, 'About Page');
              },
            ),
            RaisedButton(
              child: Text('เกี่ยวกับเรา'),
              onPressed: () {
                Navigator.pushNamed(context, 'homestack/contact');
              },
            )
          ],
        ),
      ),
    );
  }
}
