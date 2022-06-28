// ignore_for_file: deprecated_member_use

import 'package:workshop/model/constructor.dart';
import 'package:workshop/widget/menu.dart';

import '../widget/logo.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

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
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/McLaren.png'),
                  fit: BoxFit.cover)),
          child: GridView.count(
  primary: false,
  padding: const EdgeInsets.all(20),
  crossAxisSpacing: 20,
  mainAxisSpacing: 10,
  crossAxisCount: 2,
  children: <Widget>[
    GestureDetector( onTap: () {
      Navigator.pushNamed(context, 'homestack/company');
    },
      child: Container( 
        padding: const EdgeInsets.all(8),
        child: Column( mainAxisAlignment: MainAxisAlignment.center,
          children: [ Icon(Icons.business,size: 80,color: Colors.purple,),
            const Text("บริษัท",style: TextStyle(fontSize: 20),),
          ],
        ),
        color: Colors.teal[100],
      ),
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: Column( mainAxisAlignment: MainAxisAlignment.center,
        children: [ Icon(Icons.map,size: 80,color: Colors.purple,),
          const Text("แผนที่",style: TextStyle(fontSize: 20),),
        ],
      ),
      color: Colors.teal[100],
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: Column( mainAxisAlignment: MainAxisAlignment.center,
        children: [ Icon(Icons.camera,size: 80,color: Colors.purple,),
          const Text("กล้อง",style: TextStyle(fontSize: 20),),
        ],
      ),
      color: Colors.teal[100],
    ),
    GestureDetector( onTap:() async {
        fromAbout = await Navigator.pushNamed(context, 'homestack/about',
            arguments: Student(name: 'kittithat', age: 20));
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Column( mainAxisAlignment: MainAxisAlignment.center,
          children: [ Icon(Icons.person,size: 80,color: Colors.purple,),
             Text('เกี่ยวกับ ${fromAbout ?? ''}',style: TextStyle(fontSize: 20),),
          ],
        ),
        color: Colors.teal[100],
      ),
    ),
   
    
   
    
  ],
)
        ));
  }
}
