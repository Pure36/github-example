import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ติดต่อเรา')),
      body: Center(
        child: Column(
          children: [
            Text('test222'),
            RaisedButton(
                child: Text('กลับHome'),
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(context, 'homestack/home',
                      (Route<dynamic> route) => false);
                }),
          ],
        ),
      ),
    );
  }
}
