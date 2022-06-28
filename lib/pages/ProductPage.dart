// ignore_for_file: deprecated_member_use

import 'package:workshop/widget/menu.dart';

import '../model/constructor.dart';
import '../widget/logo.dart';
import 'package:flutter/material.dart';

import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key, }) : super(key: key);

  //final String title;

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getData();
  }
  _getData()async{
 
final url = Uri.parse("https://api.codingthailand.com/api/course");
http.Response response= await http.get(url);

if (response.statusCode == 200) {
  print(response.body);
}
  else { //error 400, 500
   print('error from backend ${response. statusCode}');

  }
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      drawer: Menu(),
      appBar: AppBar(centerTitle: true,
        title: Text('สินค้า'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('CodingThai'),
              
            ]),
      ),
    );
  }

 
}
