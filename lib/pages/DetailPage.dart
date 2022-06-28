import 'package:flutter/material.dart';



class DetailPage extends StatefulWidget {
  DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: const Text('รายละเอียดสินค้า')),
      body: Center(
        child: Column(
          children: [
           
            
          ],
        ),
      ),
    );
  }
}
