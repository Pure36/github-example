import 'package:flutter/material.dart';

class ConmpanyPage extends StatefulWidget {
  ConmpanyPage({Key? key}) : super(key: key);

  @override
  State<ConmpanyPage> createState() => _ConmpanyPageState();
}

class _ConmpanyPageState extends State<ConmpanyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('ข้อมูลบริษัท')),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AssetImage('assets/images/McLaren.png'),
                fit: BoxFit.cover,
              ),
              SafeArea(
                  child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'codeThailan',
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '4542315645454564654565435131213322312313515454623123',
                      textAlign: TextAlign.justify,
                    ),
                    Divider(),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.phone,
                              color: Colors.purple,
                            )
                          ],
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(children: [Text('pure')]),
                            Row(children: [Text('0999999')])
                          ],
                        ),
                      ],
                    ),
                    Divider(),
                    Wrap(
                      spacing: 8,
                      children: [
                        Chip(
                          label: Text('ggg'),
                          avatar: Icon(Icons.star),
                          backgroundColor: Colors.purple,
                        ),
                        Chip(
                          label: Text('ggg'),
                          backgroundColor: Colors.purple,
                        ),
                        Chip(
                          label: Text('ggg'),
                          backgroundColor: Colors.purple,
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/McLaren.png'),
                          radius: 40,
                        ),
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/McLaren.png'),
                          radius: 40,
                        ),
                        SizedBox(
                          width: 60,
                          child: Column(
                            children: [
                              Icon(Icons.access_alarm),
                              Icon(Icons.access_alarm)
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ))
            ],
          ),
        ));
  }
}
