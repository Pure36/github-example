import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({ Key? key }) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children:  <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text(
            'เมนูหลัก',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('หน้าหลัก'),
          selected: ModalRoute.of(context)?.settings.name=='homestack/home'?true:false,
          onTap: (){
            Navigator.of(context,rootNavigator: true).pushNamedAndRemoveUntil('/', (Route<dynamic> route)=>false);
          },
        ),
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text('สินค้า'),
          selected: ModalRoute.of(context)?.settings.name=='productstack/product'?true:false,
          onTap: (){
            Navigator.of(context,rootNavigator: true).pushNamedAndRemoveUntil('/productstack', (Route<dynamic> route)=>false);
          },
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
        ),
      ],
    ),
  );
  }
}